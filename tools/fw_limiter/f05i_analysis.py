"""F05-I: assess completed outer-integrator gain experiments on native logs."""
from argparse import ArgumentParser
import json
from pathlib import Path
import sys

sys.dont_write_bytecode = True
import numpy as np
from scipy.io import loadmat
from f02_figures import read, compact, episodes
from f04_figures import window_metrics


EXTRA = ("torque", "reset", "Psi_candidate", "dPsi", "fw_input_gated", "integrator_fw", "Ud_raw", "Uq_raw")


def assess(folder, tag, s):
    t, d = read(folder, tag, s, True, EXTRA)
    p = s["parameters"]
    native = loadmat(folder / f"aug_{tag}.mat", simplify_cells=True, variable_names=["freeze_used", "reset"])
    assert np.all(native["freeze_used"]["y"] == 1)
    residual = float(np.max(np.abs(d["dPsi"] - d["fw_input_gated"])))
    assert residual < 1e-12
    reset_times = np.atleast_1d(native["reset"]["t"])[1:][np.diff(np.atleast_1d(native["reset"]["y"]).astype(bool))]
    tr = d["Psi_trim"] / p["Ld"]
    expected_first_state = s["controlStructure"]["gainI"] * p["FocDiscrTime"] * d["fw_input_gated"][0]
    np.testing.assert_allclose(d["integrator_fw"][1], expected_first_state, rtol=1e-12, atol=1e-12)
    eq = d["Iq"] - d["Iref_dq"][:, 1]
    ed = d["Id"] - d["Iref_dq"][:, 0]
    w = t >= .05
    ke = int(np.argmax(np.where(w, np.abs(eq), -1)))
    kiq = int(np.argmin(d["Iq"]))
    qevents = [e for e in episodes(t, (np.abs(eq) > 100) & w)]
    we = p["PolePairs"] * d["speed"]
    ld, lq = p["Ld"] * (1 + p["deltaLd"]), p["Lq"] * (1 + p["deltaLq"])
    rs, psi = p["Rs"] * (1 + p["deltaRs"]), p["Psi"] * (1 + p["deltaPsi"])
    idr, iqr = d["Iref_dq"].T
    d["UssRef"] = np.hypot(rs * idr - we * lq * iqr, rs * iqr + we * (psi + ld * idr))
    case = {
        "folder": str(folder), "tag": tag, **s["gainExperiment"],
        **compact(s, t, d), "parameters": p,
        "trim": {"minA": float(tr.min()), "maxA": float(tr.max()), "finalA": float(tr[-1]),
                 "fractionNearLower": float(np.mean(tr < -499.99)),
                 "fractionNearUpper": float(np.mean(tr > 499.99)),
                 "maxStepA": float(np.max(np.abs(np.diff(tr)))),
                 "maxAbsStateFlux": float(np.max(np.abs(d["integrator_fw"])))},
        "reset": {"nativeEdgeCount": len(reset_times), "nativeEdgeTimes": reset_times.tolist()},
        "gateProductResidual": residual,
        "startup": {"firstStepTime": float(t[1]), "inputFluxAtZero": float(d["fw_input_gated"][0]),
                    "firstStepInternalStateFlux": float(d["integrator_fw"][1]),
                    "firstStepExpectedStateFlux": float(expected_first_state),
                    "firstStepLimitedTrimFlux": float(d["Psi_trim"][1]),
                    "internalStateLimitRatio": float(np.max(np.abs(d["integrator_fw"])) / (500 * p["Ld"]))},
        "transient": {"maxQErrorAfter50ms": float(abs(eq[ke])), "maxQErrorTime": float(t[ke]),
                      "minIq": float(d["Iq"][kiq]), "minIqTime": float(t[kiq]),
                      "IqrefAtMinIq": float(iqr[kiq]),
                      "qErrorRmsAfter50ms": float(np.sqrt(np.mean(eq[w]**2))),
                      "dErrorRmsAfter50ms": float(np.sqrt(np.mean(ed[w]**2))),
                      "qErrorAbove100TotalDurationAfter50ms": sum(e["duration"] for e in qevents),
                      "qErrorAbove100LongestAfter50ms": max((e["duration"] for e in qevents), default=0)},
        "maxStationaryReferenceVoltage": float(d["UssRef"].max()),
        "selectedSamples": [], "windows": [],
    }
    for start in (4.8, 5.8, 6.8):
        ww = (t >= start) & (t < start + .18)
        value = window_metrics(t, d, p, start, start + .18)
        value.update({"meanId": float(np.mean(d["Id"][ww])), "meanIdref": float(np.mean(idr[ww])),
                      "meanTrimA": float(np.mean(tr[ww])), "meanFFEquivalentA": float(np.mean(d["Psi_d_ff"][ww] / p["Ld"])),
                      "meanStationaryReferenceVoltage": float(np.mean(d["UssRef"][ww])),
                      "meanUd": float(np.mean(d["Ud"][ww])), "meanUq": float(np.mean(d["Uq"][ww]))})
        case["windows"].append(value)
    for requested in (.2, 1.1, 1.4, 2.18, 6.8, 12.2, 20.0, 24.8):
        k = int(np.argmin(abs(t - requested)))
        case["selectedSamples"].append({"time": float(t[k]), **{name: float(d[name][k]) for name in
            ("speed", "Id", "Iq", "Ud", "Uq", "UssRef", "sens", "reset", "Vabs_f", "Vs_max", "dPsi")},
            "Idref": float(idr[k]), "Iqref": float(iqr[k]), "trimA": float(tr[k]),
            "ffA": float(d["Psi_d_ff"][k] / p["Ld"])})
    return t, d, case


def main():
    ap = ArgumentParser(description=__doc__)
    ap.add_argument("root", type=Path)
    ap.add_argument("output", type=Path)
    args = ap.parse_args()
    cases = []
    for path in sorted(args.root.glob("*/summary.json")):
        summary = json.loads(path.read_text())
        tags = [k for k, v in summary.items() if isinstance(v, dict) and "gainExperiment" in v]
        if not tags:
            continue  # A simulation may be finishing verification in another session.
        assert len(tags) == 1
        tag = tags[0]
        _, _, c = assess(path.parent, tag, summary[tag])
        cases.append(c)
        print(f"{path.parent.name}: I={c['gainI']:g}, maxI={c['maxMeasuredCurrent']:.3f}, "
              f"qLong={len(c['tracking_q']['prolongedOrOpenEvents'])}, "
              f"dSat={c['dSaturation']['longestDuration']:.4f}s, "
              f"trim={c['trim']['minA']:.2f}..{c['trim']['maxA']:.2f}A, "
              f"resets={c['reset']['nativeEdgeCount']}")
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps({"stage": "F05-I: only outer I gain varied; gate=1; reset retained", "cases": cases},
                                     ensure_ascii=False, indent=2, allow_nan=False) + "\n")


if __name__ == "__main__":
    main()

"""Inspect matched transitions in the FF ablation; no new simulation or tuning."""
from argparse import ArgumentParser
from pathlib import Path
import hashlib
import json
import numpy as np
from noff_comparison import plot_pair
from f02_figures import read


def main():
    ap = ArgumentParser(description=__doc__)
    ap.add_argument('runs', type=Path)
    ap.add_argument('reference', type=Path)
    ap.add_argument('output', type=Path)
    args = ap.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    times = {
        'sg2900_cycles_nom': [.05, .15, .2, .25, .3, .5, .9],
        'sg2900_hold_nom': [10.99, 11.01, 11.01525, 15.99, 16.01, 16.02, 16.1, 16.65],
        'sg2900_startgen_nom': [4.99, 5.01, 5.02, 5.1, 5.95, 7.1, 7.19175],
    }
    extra = ('fw_inputs', 'Psi_candidate', 'Iq_request', 'torque', 'Uq_limit', 'Ud_raw', 'Uq_raw')
    result = {'toolSha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(), 'cases': {}}
    for ref, selected in times.items():
        tag = 'nff_' + ref
        ns = json.loads((args.runs/tag/'summary.json').read_text())[tag]
        bs = json.loads((args.reference/ref/'summary.json').read_text())[ref]
        tn, n = read(args.runs/tag, tag, ns, False, extra)
        tb, b = read(args.reference/ref, ref, bs, False, extra)
        np.testing.assert_array_equal(tn, tb)
        p = ns['parameters']
        samples = []
        for time in selected:
            k = int(np.argmin(abs(tn-time)))
            row = {'time': float(tn[k])}
            for label, d in (('withFF', b), ('withoutFF', n)):
                row[label] = {key: float(d[key][k]) for key in
                              ('speed', 'Id', 'Iq', 'Iq_request', 'Ud', 'Uq', 'Uq_limit', 'Ud_raw', 'Uq_raw', 'Psi_used', 'Lq_used')}
                row[label].update(Idref=float(d['Iref_dq'][k, 0]), Iqref=float(d['Iref_dq'][k, 1]),
                                  usedFF_A=float(d['fw_inputs'][k, 0]/p['Ld']),
                                  trim_A=float(d['Psi_trim'][k]/p['Ld']),
                                  candidate_A=float(d['Psi_candidate'][k]/p['Ld']))
            samples.append(row)
        result['cases'][ref] = {'samples': samples, 'referenceMatSha256': bs['matSha256'],
                                'noffMatSha256': ns['matSha256']}
        if ref == 'sg2900_cycles_nom':
            plot_pair(tn, b, n, p, tag, args.output, 0, 1.1, 'startup')
        if ref == 'sg2900_hold_nom':
            plot_pair(tn, b, n, p, tag, args.output, 10.95, 11.8, 'new_failure')
    (args.output/'mechanism_probe.json').write_text(json.dumps(result, ensure_ascii=False, indent=2, allow_nan=False)+'\n')


if __name__ == '__main__':
    main()

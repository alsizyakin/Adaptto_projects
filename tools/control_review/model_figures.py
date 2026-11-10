#!/usr/bin/env python3
"""Draw explanatory diagrams of the reviewed SLX, without MATLAB or simulation.

The diagrams are functional reconstructions, not screenshots or an automatic
netlist layout. Check the model hash and referenced block paths before rendering.
"""
import hashlib
import json
from pathlib import Path
import subprocess
import xml.etree.ElementTree as ET
import zipfile

ROOT = Path(__file__).resolve().parents[2]
MODEL = ROOT / 'ideal_source_drive_Idff_aug_param.slx'
EXPECTED_SHA = '787414147bdaf4768b4a89b4972d52522646af209e6cf770d9879a9e244c6160'
OUT = ROOT / 'docs/img/control_review'

DIAGRAMS = {
    '08_model_plant': (r'''
      rankdir=TB;
      iq [label="Repeating Sequence\nзапрос Iq: +420 … −42 А\nпериод 1 с"];
      ref [label="Формирование Idreq / Iqreq\nОП и ограничения"];
      foc [label="VectorBase\nClarke / Park → PI_d, PI_q\nразвязка и ограничения Ud/Uq"];
      pwm [label="Обратный Park → SVPWM1\nскважности и Unit Delay2"];
      src [label="Bias2 + Product5\nu = (d − 0,5) · Vdc\nтри Controlled Voltage Source"];
      motor [label="PMSM\nLd, Lq, Ψ, Rs с вариациями delta", fillcolor="#e6f4ea"];
      meas [label="Subsystem4 + датчики вала\niabc, θm, ωm; θe = p · θm", fillcolor="#e6f4ea"];
      profile [label="Clock → 1-D Lookup Table2\nзаданный профиль ωm"];
      mech [label="Ideal Angular Velocity Source\nпринудительно задаёт скорость\nна валу также J и источник момента", fillcolor="#fff0dc"];
      bus [label="Constant7: Vdc = 440 В\nLPF5 → Vdc_filt для управления"];
      iq -> ref -> foc -> pwm -> src -> motor -> meas [weight=6];
      profile -> mech;
      mech -> motor [label="механический порт", dir=both, color="#a87334"];
      bus -> src [label="Vdc"];
      bus -> foc [label="Vdc_filt", constraint=false];
      meas:e -> foc:e [label="токи, угол, скорость", style=dashed, constraint=false];
      foc -> ref [label="Ud/Uq для ОП", style=dashed, constraint=false];
      {rank=same; ref; profile;}
      {rank=same; src; bus;}
    ''', ['Repeating Sequence', '1-D Lookup Table2', 'Constant7', 'VectorBase',
          'SVPWM1', 'Unit Delay2', 'Bias2', 'Product5', 'PMSM', 'Subsystem4',
          'Ideal Angular Velocity Source', 'Inertia', 'Constant1']),
    '09_current_loops': (r'''
      rankdir=TB;
      refs [label="Idreq, Iqreq\nиз верхнего уровня"];
      ed [label="ed = Idreq − Id\nSum", group=d];
      eq [label="eq = Iqreq − Iq\nSum1", group=q];
      pd [label="PID Controller3\nPI_d + clamping\nпределы: ±Vmax − Uff,d"];
      pq [label="PID Controller4\nPI_q + clamping\nпределы: ±UqLim − Uff,q"];
      ud [label="Sum6: Ud = PI_d + Uff,d\nUff,d = −ωe · Lq_est · Iq", fillcolor="#e9e5f3", group=d];
      uq [label="Sum5: Uq = PI_q + Uff,q\nUff,q = ωe · (Psi_est + Ld · Id)", fillcolor="#e9e5f3", group=q];
      qlim [label="UqLimiter\n√max(0,001; Vmax² − Ud²)", fillcolor="#fff0dc"];
      vmax [label="Gain: Vmax\n0,995 · Vdc_filt / √3"];
      act [label="Обратный Park → SVPWM → машина"];
      fb [label="iabc → Clarke → Park(θe)\nизмеренные Id, Iq", fillcolor="#e6f4ea"];
      refs -> ed; refs -> eq;
      ed -> pd -> ud [weight=8];
      eq -> pq -> uq [weight=8];
      ud -> qlim [label="d выделяется первой"];
      qlim -> pq [label="пределы q", constraint=false, color="#a87334"];
      vmax -> pd [label="пределы d"];
      ud -> act; uq -> act;
      act -> fb;
      fb:w -> ed:w [label="Id, знак −", style=dashed, constraint=false];
      fb:e -> eq:e [label="Iq, знак −", style=dashed, constraint=false];
      {rank=same; ed; eq;}
      ed -> eq [style=invis];
      {rank=same; refs; vmax;}
      {rank=same; pd; pq;}
      {rank=same; ud; uq;}
    ''', ['VectorBase/Sum', 'VectorBase/Sum1', 'VectorBase/PID Controller3',
          'VectorBase/PID Controller4', 'VectorBase/Sum6', 'VectorBase/Sum5',
          'VectorBase/Sum7', 'VectorBase/Sum8', 'VectorBase/Sum9',
          'VectorBase/Sum10', 'VectorBase/UqLimiter',
          'VectorBase/UqLimiter/Saturation', 'VectorBase/Gain']),
    '10_field_weakening': (r'''
      rankdir=TB;
      feed [label="Vs_max, ω̃e, Iqreq, Idreq\nPsi_est, Lq_est"];
      ff [label="FF по эллипсу напряжения\nDivide2, Sum2, Max, Sqrt2…\nSaturation Dynamic1 → Min1\nPsi_d_ff ∈ [−Psi_est; 0]"];
      volts [label="Ограниченные Ud, Uq\nиз VectorBase"];
      vf [label="LPF1 / LPF6 → Sqrt1\nVf = √(Ud_f² + Uq_f²)\nτ = 10 Ts"];
      error [label="Sum11: ΔV = Vs_max − Vf\nDivide: ΔΨ = ΔV / (sens · |ω̃e|)"];
      sense [label="Divide3 → LPF2 → sat_signed4\nsens из Uq_f, Rs·Iqreq, Vf\nзнак скорости; |sens| ≥ 0,1"];
      integ [label="Product1 → PID Controller\n∫ 15 · freeze · ΔΨ dt\nPsi_trim ∈ [−50 Ld; +50 Ld]"];
      gate [label="AND / AND1 / AND2 → NOT\nfreeze: 1 разрешает интегрирование\nNOT1 → reset интегратора", fillcolor="#fff0dc"];
      sum [label="Sum6: z = Psi_d_ff + Psi_trim"];
      clip [label="Saturation Dynamic\nz ∈ [−1,2 Psi_est; 0]"];
      id [label="Gain1: деление на Ld\nUnit Delay1: Ts/2 → Idreq", fillcolor="#e9e5f3"];
      inner [label="Токовые контуры + машина\nизменяют токи и запрос напряжения"];
      feed -> ff -> sum;
      volts -> vf -> error -> integ -> sum -> clip -> id -> inner;
      vf -> sense; sense -> error [constraint=false];
      error -> gate [label="ΔΨ", constraint=false];
      sum -> gate [label="z", constraint=false];
      gate -> integ [style=dashed, constraint=false];
      inner -> volts [label="замыкание наружного контура", style=dashed, constraint=false];
      {rank=same; feed; volts;}
      {rank=same; ff; vf;}
      {rank=same; sense; error;}
    ''', ['Gain8', 'Divide2', 'Sum2', 'Sqrt2', 'Saturation Dynamic1', 'Min1',
          'Low-Pass Filter (Discrete or Continuous)1',
          'Low-Pass Filter (Discrete or Continuous)6', 'Sqrt1', 'Sum11',
          'Divide3', 'Low-Pass Filter (Discrete or Continuous)2', 'sat_signed4',
          'Divide', 'Product1', 'PID Controller', 'AND', 'AND1', 'AND2', 'NOT',
          'NOT1', 'Sum6', 'Saturation Dynamic', 'Gain1', 'Unit Delay1']),
    '11_current_references': (r'''
      rankdir=TB;
      id [label="Idreq после Unit Delay1"];
      direct [label="Без LPF8\nвход d токового регулятора", fillcolor="#e9e5f3"];
      filt [label="LPF8: Idreq_f\nτ = 100 Ts = 8,33 мс", fillcolor="#fff0dc"];
      current [label="Sum1 → Saturation → Sqrt\nIq_curLim = √max(0; Is_max² − Idreq_f²)"];
      volt [label="Divide4\nIq_voltLim = Vs_max / (|ω̃e| · Lq_est)"];
      smooth [label="Min_smooth_ab\nмягкий минимум двух пределов\nδ = 10 А → IqLim"];
      request [label="Repeating Sequence\nисходный запрос Iq"];
      min [label="Min3\nIqreq = min(IqLim, запрос)\nограничение только сверху", fillcolor="#fff0dc"];
      q [label="Вход q токового регулятора", fillcolor="#e9e5f3"];
      id -> direct;
      id -> filt -> current -> smooth -> min -> q;
      volt -> smooth; request -> min;
      {rank=same; current; volt;}
      {rank=same; min; request;}
      direct -> q [style=invis];
    ''', ['Unit Delay1', 'Low-Pass Filter (Discrete or Continuous)8', 'Sum1',
          'Saturation', 'Sqrt', 'Divide4', 'Min_smooth_ab', 'Min3',
          'Repeating Sequence']),
    '12_parameter_feedback': (r'''
      rankdir=TB;
      input [label="Id, Iq из Bus Selector\nUd, Uq — команды VectorBase\nскорость и номинальные Rs, Ld"];
      psi [label="Divide7 → Sum12\nPsi_raw = (Uq − Rs·Iq) / ω̂e − Ld·Id"];
      lq [label="Sum → Divide8\nLq_raw = (Rs·Id − Ud) / (ω̂e · Îq)"];
      plim [label="Saturation2 → LPF7\n[0,6 Ψ; 1,4 Ψ]\nτ = 20000 Ts = 1,667 с"];
      qlim [label="Saturation3 → LPF9\n[0,1 Lq; 1,4 Lq]\nτ = 200 Ts = 16,67 мс"];
      po [label="Psi_est\nначальное значение Ψ", fillcolor="#e6f4ea"];
      qo [label="Lq_est\nначальное значение Lq", fillcolor="#e6f4ea"];
      usep [label="Развязка q; FF и пределы Id\nлогика порога ОП"];
      useq [label="Развязка d; FF\nпредел Iq по напряжению"];
      caveat [label="ω̂e: sat_signed1/2, модуль ≥ 40 рад/с\nÎq: sat_signed3, модуль ≥ 0,1 А\nВ текущей схеме нет valid/hold", fillcolor="#fff0dc"];
      input -> psi -> plim -> po -> usep;
      input -> lq -> qlim -> qo -> useq;
      caveat -> psi [style=dotted, constraint=false];
      caveat -> lq [style=dotted, constraint=false];
      {rank=same; psi; lq;}
      {rank=same; plim; qlim;}
      {rank=same; po; qo;}
      {rank=same; usep; useq;}
    ''', ['Bus Selector', 'Gain13', 'Gain14', 'Divide7', 'Divide8', 'Sum12',
          'Sum', 'Saturation2', 'Saturation3', 'sat_signed1', 'sat_signed2',
          'sat_signed3', 'Low-Pass Filter (Discrete or Continuous)7',
          'Low-Pass Filter (Discrete or Continuous)9']),
    '13_voltage_path': (r'''
      rankdir=TB;
      command [label="Ud / Uq после ограничений PI\nИменно эти сигналы получают ОП и оценщики", fillcolor="#e9e5f3"];
      angle [label="Угловое опережение\nθfuture = θe + ωe Ts · (1 − 0,5 compensate_pwm)\ncompensate_pwm = 0 → θe + ωe Ts"];
      park [label="Inverse Park Transform1\nCartesian to Polar1 → vRef, vAngle"];
      sv [label="SVPWM1: вызов Ts/2\nрасчёт / удержание через вызов\nm = clip(√3 · vRef / Vdc_filt; 0; 0,995)"];
      clamp [label="Финальная обрезка скважностей\n0,005 ≤ da, db, dc ≤ 0,995\nвнутри SVPWM1", fillcolor="#fff0dc"];
      delay [label="Mux5 → Unit Delay2\nзадержка Ts/2; сигнал Kzi"];
      phase [label="Bias2 → Product5\nG1, G3, G5 = (da,b,c − 0,5) · Vdc"];
      machine [label="Controlled Voltage Source × 3 → PMSM\nсредние напряжения, без ключевых переключений", fillcolor="#e6f4ea"];
      bus [label="Constant7: Vdc\nмножитель источников"];
      filt [label="LPF5: Vdc_filt\nτ = 20 Ts = 1,667 мс"];
      command -> park -> sv -> clamp -> delay -> phase -> machine [weight=8];
      angle -> park;
      bus -> filt;
      filt -> sv [constraint=false];
      bus -> phase [label="Vdc", constraint=false];
      {rank=same; park; angle;}
      {rank=same; sv; filt;}
      {rank=same; command; bus;}
    ''', ['VectorBase/Gain3', 'VectorBase/Gain7', 'VectorBase/Sum2',
          'VectorBase/Inverse Park Transform1', 'VectorBase/Cartesian to Polar1',
          'SVPWM1', 'Mux5', 'Unit Delay2', 'Bias2', 'Product5',
          'Low-Pass Filter (Discrete or Continuous)5', 'Constant7',
          'Controlled Voltage Source', 'Controlled Voltage Source1',
          'Controlled Voltage Source2']),
}


def model_blocks():
    digest = hashlib.sha256(MODEL.read_bytes()).hexdigest()
    if digest != EXPECTED_SHA:
        raise ValueError('SLX changed: review the diagrams before updating EXPECTED_SHA.')
    blocks = {}
    keys = {'Gain', 'Value', 'Inputs', 'UpperLimit', 'LowerLimit', 'SampleTime',
            'SystemSampleTime', 'Controller', 'P', 'I', 'AntiWindupMode',
            'TrackingMode', 'ExternalReset', 'SatLimitsSource', 'LimitOutput',
            'T', 'Ts', 'A', 'B', 'x0', 'Commented', 'rep_seq_t', 'rep_seq_y',
            'Table', 'BreakpointsForDimension1', 'Ld', 'Lq', 'Rs',
            'pm_flux_linkage', 'inertia'}
    with zipfile.ZipFile(MODEL) as archive:
        def walk(ref, prefix=''):
            system = ET.fromstring(archive.read(f'simulink/systems/{ref}.xml'))
            for block in system.findall('Block'):
                path = prefix + block.attrib['Name'].replace('\n', ' ')
                blocks[path] = {
                    'sid': block.attrib['SID'], 'type': block.attrib['BlockType'],
                    'parameters': {p.attrib['Name']: p.text for p in block.findall('.//P')
                                   if p.attrib.get('Name') in keys}}
                sub = block.find('System')
                if sub is not None and 'Ref' in sub.attrib:
                    walk(sub.attrib['Ref'], path + '/')
        walk('system_root')
    return digest, blocks


def main():
    digest, blocks = model_blocks()
    used = {path for _, paths in DIAGRAMS.values() for path in paths}
    missing = used - blocks.keys()
    if missing:
        raise ValueError(f'Missing model blocks: {sorted(missing)}')
    OUT.mkdir(parents=True, exist_ok=True)
    common = '''
      graph [bgcolor="white", pad="0.28", nodesep="0.38", ranksep="0.5", dpi=140];
      node [shape=box, style="rounded,filled", fillcolor="#eef4fa", color="#526777",
            fontname="DejaVu Sans", fontsize=12, margin="0.16,0.12"];
      edge [color="#526777", fontname="DejaVu Sans", fontsize=10, arrowsize=0.75];
    '''
    for name, (body, _) in DIAGRAMS.items():
        dot = OUT / f'{name}.dot'
        dot.write_text('digraph G {\n' + common + body + '\n}\n')
        subprocess.run(['dot', '-Tpng', str(dot), '-o', str(OUT/f'{name}.png')], check=True)
    manifest = {
        'model': MODEL.name, 'model_sha256': digest,
        'note': 'Functional diagrams manually traced from SLX; line breaks in block names normalized to spaces. No simulation.',
        'figures': {name: paths for name, (_, paths) in DIAGRAMS.items()},
        'blocks': {path: blocks[path] for path in sorted(used)},
    }
    target = ROOT/'docs/data/control_model_structure.json'
    target.write_text(json.dumps(manifest, ensure_ascii=False, indent=2)+'\n')
    print(f'Generated {len(DIAGRAMS)} current-model diagrams; checked {len(used)} block paths and model SHA-256.')


if __name__ == '__main__':
    main()

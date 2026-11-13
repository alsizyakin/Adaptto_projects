"""Archive the completed F06 component audit without touching user models."""
from pathlib import Path
import ast
import hashlib
import json
import re
import shutil
import subprocess
from PIL import Image

project = Path(__file__).resolve().parents[2]
root = Path(__file__).resolve().parent
data = project/'docs/data/control_fixes/f06_components_20261113'
images = project/'docs/img/control_fixes/f06_components_20261113'


def sha(path):
    with path.open('rb') as stream:
        return hashlib.file_digest(stream, 'sha256').hexdigest()


def write(path, obj):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(obj, ensure_ascii=False, indent=2, allow_nan=False)+'\n')


specs = json.loads((root/'cases.json').read_text())
sources = json.loads((root/'source_manifest.json').read_text())
analysis = json.loads((root/'analysis/summary.json').read_text())
assert analysis['pending'] == [] and len(analysis['cases']) == len(specs) == 4
for name, source in sources.items():
    assert sha(root/name) == source['sha256'], name
sources['component_source_ff_restored.slx']['note'] = (
    'Autosave observed during audit; FF restored at Sum6 and VectorBase/Gain1 changed from 1 to 0.98. Both changes are included in B.')
write(root/'source_manifest.json', sources)

# Preserve the complete root graph changes, including wires rather than
# only parameters of existing blocks.
old = json.loads((root/'saved_F06_source.slx.graph.json').read_text())['simulink/systems/system_root.xml']
new = json.loads((root/'component_source.slx.graph.json').read_text())['simulink/systems/system_root.xml']
diff = json.loads((root/'structural_diff.json').read_text())
oe = {(e['source'], e['target']) for e in old['edges']}
ne = {(e['source'], e['target']) for e in new['edges']}
diff['rootConnectionsRemoved'] = sorted(oe-ne)
diff['rootConnectionsAdded'] = sorted(ne-oe)
for key, before, after in [('rootBlocksAdded', old, new), ('rootBlocksRemoved', new, old)]:
    diff[key] = [{k: after['nodes'][sid][k] for k in ('Name','SID','BlockType')}
                 for sid in sorted(set(after['nodes'])-set(before['nodes']))]
assert ['2319#out:1','2318#in:2'] in [list(e) for e in diff['rootConnectionsRemoved']]
write(root/'structural_diff.json', diff)

verified = []
for spec in specs:
    tag = spec['id']
    summary = json.loads((root/tag/'summary.json').read_text())[tag]
    result = next(a for a in analysis['cases'] if a['id'] == tag)
    assert summary['userSourceSha256'] == sources[spec['sourceSnapshot']]['sha256']
    assert all(summary[k] for k in ('completed','finite','coverage','fullResolution','jointReferenceLog'))
    assert summary['finalTime'] == spec['stopTime'] == 25
    assert summary['matSha256'] == sha(root/tag/('aug_'+tag+'.mat'))
    assert summary['sourceSha256'] == sha(root/tag/'baseline_source.slx')
    assert summary['modelSha256'] == sha(root/tag/('aug_'+tag+'.slx'))
    assert result['toolSha256'] == analysis['toolSha256']
    assert result['ffConnectionCheck']['consistent'] == spec['expectedFFConnectionsConsistent']
    assert summary['controlStructure']['dLimitGain'] == spec['expectedDLimitGain']
    assert max(summary['fwVerification'].values()) < 1e-9
    assert result['componentChecks']['symmetricIqLimitExcessA'] < 1e-9
    assert result['componentChecks']['hardMinimumResidualA'] < 1e-9
    assert result['voltageLimitMeaning']['dLimitGain'] == spec['expectedDLimitGain']
    verified.append({'id':tag, 'completed':True, 'duration':25,
                     'sourceSnapshot':spec['sourceSnapshot'], 'matSha256':summary['matSha256'],
                     'maxMeasuredCurrent':summary['maxMeasuredCurrent'],
                     'regressionPass':result['regressionPass'], 'qualityPass':result['settledQualityPass']})

unit = json.loads((root/'component_tests/component_tests.json').read_text())
assert unit['symmetricLimiter']['passed'] and unit['symmetricLimiter']['cases'] == 130
assert unit['pwm']['passed'] and unit['pwm']['cases'] == 8652
assert unit['sha256'] == sources['component_source.slx']['sha256']

data.mkdir(parents=True, exist_ok=True)
images.mkdir(parents=True, exist_ok=True)
relative_files = list(sources)+['source_manifest.json','structural_diff.json','restored_connections.json','cases.json',
                               'saved_F06_source.slx.graph.json','component_source.slx.graph.json',
                               'probe_connections.m','archive_audit.py']
relative_files += [str(p.relative_to(root)) for p in root.glob('*.log')]
for dirname in ('component_tests','connection_checks','embedded'):
    relative_files += [str(p.relative_to(root)) for p in (root/dirname).rglob('*')
                       if p.is_file() and p.suffix in ('.json','.m','.slx')]
for spec in specs:
    relative_files += [spec['id']+'/'+name for name in ('summary.json','scenario.json',
                       'parameter_selection.json','inspection.json','fw_trim.m')]
relative_files += [str(p.relative_to(root)) for p in (root/'analysis').glob('*.json')]
for name in sorted(set(relative_files)):
    target = data/name
    target.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(root/name, target)
    assert sha(root/name) == sha(target)
for path in (root/'analysis').glob('*.png'):
    with Image.open(path) as img:
        img.verify()
    shutil.copy2(path, images/path.name)
assert len(list(images.glob('*.png'))) == 17

tools = ('audit_f06_components.m components_analysis.py run_aug.m inspect_f06_model.m '
         'run_release450_case.m run_release450_suite.m verify_f06_case.m fw_trim_persistent.m '
         'starter2900_analysis.py f02_figures.py baseline_comparison.py '
         'fwl_dirs.m fwl_sha256.m fwl_assess.m fwl_episodes.m').split()
for name in tools:
    path = project/'tools/fw_limiter'/name
    if path.suffix == '.py':
        ast.parse(path.read_text(), filename=str(path))
    (data/'tools_snapshot').mkdir(exist_ok=True)
    shutil.copy2(path, data/'tools_snapshot'/name)
write(data/'tools_manifest.json', {name:sha(data/'tools_snapshot'/name) for name in tools})

docs = ['docs/f06_component_audit.md','docs/control_fix_log.md','docs/control_backlog.md',
        'docs/F07_HANDOFF.md','docs/field_weakening_redesign.md','tools/fw_limiter/README.md']
broken = []
for name in docs:
    path = project/name
    text = path.read_text()
    assert len(re.findall(r'^```', text, re.M)) % 2 == 0, name
    for link in re.findall(r'\]\(([^)]+)\)', text):
        if re.match(r'^(https?://|#|mailto:)', link): continue
        target = link.split('#')[0]
        if target and not (path.parent/target).exists(): broken.append([name, link])
assert not broken, broken
check = subprocess.run(['git','diff','--check'], cwd=project, capture_output=True, text=True)
assert check.returncode == 0, check.stdout+check.stderr

working_sha = sha(project/'ideal_source_drive_Idff_aug_param_F06.slx')
verification = {'cases':verified, 'componentTestsPassed':True, 'figureCount':17,
                'archivedCopiesMatch':True, 'localLinksChecked':docs,
                'pythonSyntaxChecked':True,'gitDiffCheckPassed':True,
                'workingSavedF06Sha256AtFinish':working_sha,
                'workingSavedF06StillMatchesInitial':working_sha==sources['saved_F06_source.slx']['sha256'],
                'workingModelWrittenByAssistant':False,
                'limitations':['Four runs compare mixed changes, not isolated Iq, FF or estimator effects.',
                               'The old dSaturation metric requires near-zero Uq; ordinary d saturation is recorded separately.',
                               'Full MAT and simulation caches remain in project tmp; no cleanup performed.']}
write(data/'verification.json', verification)
write(root/'verification.json', verification)
(data/'runtime_note.txt').write_text(
    'F06-C01, 2026-11-13. Four completed 25-second simulations of frozen copies.\n'
    'A: Iq fixes and inconsistent FF connections. B: Iq fixes, restored FF, d-limit gain 0.98.\n'
    'Original user SLX/autosave were never saved by these tools. Autosave changed during the audit.\n'
    'All four cases fail system current/tracking criteria; passing component checks do not establish system stability.\n'
    'Full native MAT files and generated run models remain in tmp/f06_components_20261113.\n'
    'Repeat instructions: tools/fw_limiter/README.md, section F06: аудит компонентов.\n'
    'Units were tested from source A; unchanged embedded code and UqLimiter are shared with B.\n')
manifest = {str(p.relative_to(data)):sha(p) for p in sorted(data.rglob('*'))
            if p.is_file() and p.name != 'artifact_manifest.json'}
manifest.update({str(p.relative_to(project)):sha(p) for p in sorted(images.glob('*.png'))})
write(data/'artifact_manifest.json', manifest)
print(json.dumps({'verified':len(verified),'files':len(manifest),'figures':17,
                  'workingSavedF06StillMatchesInitial':verification['workingSavedF06StillMatchesInitial']},indent=2))

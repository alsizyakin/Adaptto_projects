function summary = verify_baseline(runDir)
% Reassess a saved baseline without simulating; verify its model provenance.
d = fwl_dirs(runDir);
runs = d.runs;
logName = ['verification_' char(datetime('now', 'Format', 'yyyyMMdd_HHmmss')) '.log'];
diary(fullfile(runs, logName));
cleanupDiary = onCleanup(@() diary('off'));
test_fwl_assess();
summary = jsondecode(fileread(fullfile(runs, 'summary.json')));
for tag = {'nom', 'ldp20'}
    n = tag{1};
    R = load(fullfile(runs, ['aug_' n '.mat']));
    A = fwl_assess(R);
    assert(all(isfield(R, R.signalMap(:, 3))));
    assert(A.completed && A.finite && A.coverage && A.fullResolution && A.jointReferenceLog);
    assert(strcmp(R.sourceSha256, fwl_sha256(fullfile(runs, 'baseline_source.slx'))));
    assert(strcmp(R.modelSha256, fwl_sha256(fullfile(runs, ['aug_' n '.slx']))));
    assert(max(abs(R.Ud.y - R.PI_d_limited.y + R.Ud_decoupling_magnitude.y)) < 1e-9);
    assert(max(abs(R.Uq.y - R.PI_q_limited.y - R.Uq_decoupling.y)) < 1e-9);
    load_system(fullfile(runs, ['aug_' n '.slx']));
    ws = get_param(['aug_' n], 'ModelWorkspace');
    for param = {'deltaLd', 'deltaLq', 'deltaPsi', 'deltaRs'}
        value = ws.getVariable(param{1});
        expected = 0.2 * (strcmp(n, 'ldp20') && strcmp(param{1}, 'deltaLd'));
        assert(value == expected);
        A.actualDeltas.(param{1}) = value;
    end
    ports = get_param(['aug_' n '/Simulink-PS Converter1'], 'PortConnectivity');
    speedSource = ports(1).SrcBlock;
    A.speedProfile.block = strrep(get_param(speedSource, 'Name'), newline, ' ');
    A.speedProfile.time = ws.evalin(get_param(speedSource, 'BreakpointsForDimension1'));
    A.speedProfile.speed = ws.evalin(get_param(speedSource, 'Table'));
    A.speedProfile.maxMeasuredSpeed = max(R.speed.y);
    A.speedProfile.finalLoggedTime = R.speed.t(end);
    A.speedProfile.finalMeasuredSpeed = R.speed.y(end);
    feedbackPorts = get_param(['aug_' n '/Sum11'], 'PortConnectivity');
    feedbackSource = feedbackPorts(2).SrcBlock;
    A.controlStructure.fwFeedbackSource = strrep(get_param(feedbackSource, 'Name'), newline, ' ');
    gatePorts = get_param(['aug_' n '/Goto9'], 'PortConnectivity');
    A.controlStructure.freezeTagSource = get_param(gatePorts(1).SrcBlock, 'Name');
    A.controlStructure.trimUpperFlux = ws.evalin(get_param(['aug_' n '/PID Controller'], 'UpperSaturationLimit'));
    A.controlStructure.trimLowerFlux = ws.evalin(get_param(['aug_' n '/PID Controller'], 'LowerSaturationLimit'));
    A.controlStructure.trimReset = get_param(['aug_' n '/PID Controller'], 'ExternalReset');
    if isfield(R, 'freeze_used')
        A.controlStructure.freezeUsedMinimum = min(R.freeze_used.y);
        A.controlStructure.freezeUsedMaximum = max(R.freeze_used.y);
    end
    gainHandle = getSimulinkBlockHandle(['aug_' n '/VectorBase/Gain1']);
    if gainHandle ~= -1 && strcmp(get_param(gainHandle, 'BlockType'), 'Gain')
        A.controlStructure.dLimitGain = ws.evalin(get_param(gainHandle, 'Gain'));
    end
    if isfield(R, 'Psi_used') && isfield(R, 'Lq_used')
        for entry = {'Psi', 'Lq'}
            name = entry{1};
            used = R.([name '_used']);
            assert(used.t(1) <= 1e-12 && used.t(end) >= R.finalTime - R.parameters.FocDiscrTime);
            A.controlParameters.(name).minimum = min(used.y);
            A.controlParameters.(name).maximum = max(used.y);
            A.controlParameters.(name).maxNominalDeviation = max(abs(used.y - R.parameters.(name)));
        end
    end
    close_system(['aug_' n], 0);
    A.sourceSha256 = R.sourceSha256; A.modelSha256 = R.modelSha256;
    A.parameters = R.parameters; A.overrides = R.overrides;
    A.elapsed = R.elapsed; A.finalTime = R.finalTime; A.signalCount = size(R.signalMap, 1) + 2;
    A.matSha256 = fwl_sha256(fullfile(runs, ['aug_' n '.mat']));
    summary.(n) = A;
    fprintf('%s: complete=1 finite=1 coverage=1 fullRate=1 signals=%d dutyOK=%d\n', n, A.signalCount, A.dutyWithinLimit);
    fprintf('  Iref=%.6f A, I=%.6f A, q prolonged=%d, q open=%d, recovery q=%d\n', ...
        A.maxReferenceCurrent, A.maxMeasuredCurrent, A.tracking_q.prolongedCount, ...
        A.tracking_q.activeAtEnd, A.tracking_q.recoveryObserved);
end
summary.verification = 'test_fwl_assess; both complete logs reassessed; source/model hashes; saved delta parameters; limited-voltage identities';
summary.verificationLog = logName;
summary.verifiedAt = char(datetime('now', 'TimeZone', 'local', 'Format', 'yyyy-MM-dd HH:mm:ss Z'));
fid = fopen(fullfile(runs, 'summary.json'), 'w');
fprintf(fid, '%s\n', jsonencode(summary, PrettyPrint=true)); fclose(fid);
metrics(runs);
fprintf('Verification passed. Current and raw tracking violations remain baseline findings.\n');
diary off;
end

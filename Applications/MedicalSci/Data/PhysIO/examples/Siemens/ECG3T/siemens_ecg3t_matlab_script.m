physio = tapas_physio_new();

physio.log_files.vendor = 'Siemens';
physio.log_files.cardiac = {'siemens_PAV.ecg'};
physio.log_files.sampling_interval = 0.0025;
physio.log_files.relative_start_acquisition = 0;
physio.log_files.align_scan = 'last';
physio.scan_timing.sqpar.Nslices = 20;
physio.scan_timing.sqpar.TR = 2.41;
physio.scan_timing.sqpar.Ndummies = 5;
physio.scan_timing.sqpar.Nscans = 400;
physio.scan_timing.sqpar.onset_slice = 11;
physio.scan_timing.sync.method = 'nominal';
physio.preproc.cardiac.modality = 'ECG';
physio.preproc.cardiac.initial_cpulse_select.method = 'auto_matched';
physio.preproc.cardiac.initial_cpulse_select.file = 'initial_cpulse_kRpeakfile.mat';
physio.preproc.cardiac.initial_cpulse_select.min = 0.4;
physio.preproc.cardiac.posthoc_cpulse_select.method = 'off';
physio.preproc.cardiac.posthoc_cpulse_select.percentile = 80;
physio.preproc.cardiac.posthoc_cpulse_select.upper_thresh = 60;
physio.preproc.cardiac.posthoc_cpulse_select.lower_thresh = 60;
physio.model.orthogonalise = 'none';
physio.model.output_multiple_regressors = 'multiple_regressors.txt';
physio.model.output_physio = 'physio.mat';
physio.model.retroicor.include = true;
physio.model.retroicor.order.c = 3;
physio.model.retroicor.order.r = 4;
physio.model.retroicor.order.cr = 1;
physio.model.rvt.include = false;
physio.model.rvt.delays = 0;
physio.model.hrv.include = false;
physio.model.hrv.delays = 0;
physio.model.noise_rois.include = false;
physio.model.noise_rois.thresholds = 0.9;
physio.model.noise_rois.n_voxel_crop = 0;
physio.model.noise_rois.n_components = 1;
physio.model.movement.include = false;
physio.model.movement.order = 6;
physio.model.movement.outlier_translation_mm = Inf;
physio.model.movement.outlier_rotation_deg = Inf;
physio.model.other.include = false;
physio.verbose.level = 2;
physio.verbose.process_log = cell(0, 1);
physio.verbose.fig_handles = zeros(0, 1);
physio.verbose.fig_output_file = 'physio.fig';
physio.verbose.use_tabs = false;
physio.ons_secs.c_scaling = 1;
physio.ons_secs.r_scaling = 1;

physio = tapas_physio_main_create_regressors(physio);

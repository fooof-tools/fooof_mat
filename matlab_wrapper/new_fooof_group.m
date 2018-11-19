% NOTE: possible WIP for using FOOOFGroup directly
%   Current problem: can't convert 2d arrays...

function out = new_fooof_group(freqs, psds, f_range, settings)

    % Check settings - get defaults for those not provided
    settings = fooof_check_settings(settings);

    % Initialize object to collect FOOOF results
    fooof_results = [];

    % Convert inputs
    freqs = py.numpy.array(freqs);
    psds = py.numpy.array(psds);
    f_range = py.list(f_range);
    
    % Initialize FOOOF object
    fg = py.fooof.FOOOFGroup(settings.peak_width_limits, ...
                             settings.max_n_peaks, ...
                             settings.min_peak_amplitude, ...
                             settings.peak_threshold, ...
                             settings.background_mode, ...
                             settings.verbose);
    fg.fit(freqs, psds, f_range)
    
    out = 1
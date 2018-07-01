function results = fooof(freqs, psd, f_range, settings)

    % Check settings - get defaults for those not provided
    settings = fooof_settings(settings);

    % Convert inputs
    freqs = py.numpy.array(freqs);
    psd = py.numpy.array(psd);
    f_range = py.list(f_range);
    
    % Initialize FOOOF object
    fm = py.fooof.FOOOF(settings.peak_width_limits, ...
                        settings.max_n_peaks, ...
                        settings.min_peak_amplitude, ...
                        settings.peak_threshold, ...
                        settings.background_mode, ...
                        settings.verbose);
    
    % Run FOOOF fit
    fm.fit(freqs, psd, f_range)
    
    % Extract outputs
    results = fm.get_results();
    results = fooof_results(results);
    
end
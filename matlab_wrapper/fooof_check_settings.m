% Check fooof settings, provided as a struct
%   Any settings not specified are set to default values

function settings = fooof_check_settings(settings)

    if ~exist('settings.peak_width_limits')
        settings.peak_width_limits = [0.5, 12];
    end
    if ~exist('settings.max_n_peaks')
        settings.max_n_peaks = Inf;
    end
    if ~exist('settings.min_peak_amplitude')
        settings.min_peak_amplitude = 0.0;
    end
    if ~exist('settings.peak_threshold')
        settings.peak_threshold = 2.0;
    end
    if ~exist('settings.background_mode')
        settings.background_mode = 'fixed';
    end
    if ~exist('settings.verbose')
        settings.verbose = true;
    end

end
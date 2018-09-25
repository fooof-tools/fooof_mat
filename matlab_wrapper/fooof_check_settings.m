% Check fooof settings, provided as a struct
%   Any settings not specified are set to default values

function settings = fooof_check_settings(settings)

    % Set defaults for all settings
    defaults = struct(...
        'peak_width_limits', [0.5, 12], ...
        'max_n_peaks', Inf, ...
        'min_peak_amplitude', 0.0, ...
        'peak_threshold', 2.0, ...
        'background_mode', 'fixed', ...
        'verbose', true);
    
    % Overwrite any non-existent of nan settings with defaults
    for field = fieldnames(defaults)'
        if ~isfield(settings, field) || isnan(settings.(field{1}))
            settings.(field{1}) = defaults.(field{1});
        end
    end

end
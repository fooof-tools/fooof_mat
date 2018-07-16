% Unpack fooof_results python object into matlab struct
function results_out = fooof_unpack_results(fm)

    results_out = struct();
    
    results_out.fooof_freqs = double(py.array.array('d',fm.freqs));
    results_out.power_spectrum = double(py.array.array('d', fm.power_spectrum));
    results_out.fooof_spectrum = double(py.array.array('d', fm.fooofed_spectrum_));
    
    %This still gives error in matlab due to the variable starting with undefined character
    % results_out.fooof_bg_fit = double(py.array.array('d',fm._bg_fit));
    % results_out.fooof_bg_fit = double(py.array.array('d',getfield(fm,'_bg_fit')));
     
    results_in = fm.get_results();
    
    results_out.background_params = ...
        double(py.array.array('d', results_in.background_params));
    
    temp = double(py.array.array('d', results_in.peak_params.ravel));
    results_out.peak_params = ...
        transpose(reshape(temp, 3, length(temp) / 3));
    
    temp = double(py.array.array('d', results_in.gaussian_params.ravel));
    results_out.gaussian_params = ...
        transpose(reshape(temp, 3, length(temp) / 3));
    
    results_out.error = ...
        double(py.array.array('d', py.numpy.nditer(results_in.error)));
    
    % Note: for reasons unknown, r_squared seems to come out as float...
    results_out.r_squared = results_in.r_squared;
    %results_out.r_squared = ...
    %    double(py.array.array('d', py.numpy.nditer(results_in.r_squared)));
    
end

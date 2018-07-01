% Unpack fooof_results python object into matlab struct

function results_out = fooof_results(results_in)

    results_out = struct();
    
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
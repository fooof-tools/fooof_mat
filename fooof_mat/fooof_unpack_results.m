% fooof_unpack_results() - Extract model fit results from FOOOFResults.
%
% Usage:
%   >> results_out = fooof_unpack_results(results_in);
%
% Inputs:
%   fooof_results   = FOOOFResults object
%
% Outputs:
%   results_out     = fooof model results, in a struct, including:
%       results_out.background_params
%       results_out.peak_params
%       results_out.gaussian_params
%       results_out.error
%       results_out.r_squared
%
% Notes
%   This function is mostly an internal function.
%     It can be called directly by the user if you are interacting with FOOOF objects directly.

function results_out = fooof_unpack_results(results_in)

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

    results_out.r_squared = results_in.r_squared;

    % Note: r_squared seems to come out as float, and does not need type casting
    %   It is not clear why this value is different
    %   Just in case, the code for type casting is commented out below:
    %results_out.r_squared = ...
    %    double(py.array.array('d', py.numpy.nditer(results_in.r_squared)));

end
% load_fooof_results () - load results from a json file (as saved out by FOOOF)
%
% Usage:
%   >> fooof_results = load_fooof_results(file_name)
%
% Inputs:
%   file_name       = file name of the fooof-format json file to load
%
% Ouputs:
%   fooof_results   = fooof model ouputs, in a struct, including:
%       fooof_results.background_params
%       fooof_results.peak_params
%       fooof_results.gaussian_params
%       fooof_results.error
%       fooof_results.r_squared
%
% Notes
%   This function uses the json support added to Matlab in r2016b.

function fooof_results = load_fooof_results(file_name)

    dat = importdata(file_name);

    fooof_results = [];
    for ind = 1:length(dat)
        fooof_results = [fooof_results, jsondecode(dat{ind})];
    end

end
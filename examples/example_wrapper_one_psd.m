%% FOOOF Matlab Wrapper Example - Single PSD

% Load data
load('dat/ch_dat_one.mat');

% Calculate a power spectrum with Welch's method
[psd, freqs] = pwelch(ch_dat_one, 500, [], [], s_rate);

% Transpose, to make FOOOF inputs row vectors
freqs = freqs';
psd = psd';

% FOOOF settings
settings = struct();  % Use defaults
f_range = [1, 50];

% Run FOOOF
fooof_results = fooof(freqs, psd, f_range, settings);

% Print out the FOOOF Results
fooof_results
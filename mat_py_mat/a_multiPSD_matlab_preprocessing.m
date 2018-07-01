%% Matlab PreProcessing - Multiple PSDs

% Load data
load('dat/ch_dat_one.mat');
load('dat/ch_dat_two.mat');

% Combine into a multi-channel data matrix
chs_dat = [ch_dat_one; ch_dat_two]';

%% Calculate Power Spectra

% Calculate power spectra with Welch's method
[psds, freqs] = pwelch(chs_dat, 500, [], [], s_rate);

% Save the power spectra out to mat files
save('power_spectra', 'freqs', 'psds');

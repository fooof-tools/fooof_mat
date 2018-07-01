%% Load and Analyze FOOOF Results in Matlab

%% Load a specific variable that was saved out

% Load slopes
sls = load('slopes');

% Check out slopes
sls

%% Load in FOOOF results that have been saved out

outputs = [];
for ind = 0:1
    output = load(strcat('f_res_', string(ind)));
    outputs = [outputs, output];
end

% Check out outputs
outputs

%% Now you can do anything you want with your FOOOF results
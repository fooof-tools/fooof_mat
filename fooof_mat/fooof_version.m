% fooof_version() - Get FOOOF version information, of both Python & Wrapper.
%
% Usage:
%   >> fooof_version()

function fooof_version()

    % Get the version of the Python implementation of FOOOf being used
    fooof_py_version = string(py.pkg_resources.get_distribution('fooof').version);

    % Set the version number of the matlab wrapper
    %   Note: this is where version is defined for this wrapper
    fooof_wrapper_version = "1.0.0";

    % Display versions
    disp('Current version of FOOOF:     ' + fooof_py_version)
    disp('Current version of Wrapper:   ' + fooof_wrapper_version)

end

% Get the actual fit model from a FOOOF object
function model_out = fooof_get_model(fm)

    model_out = struct();
    
    model_out.freqs = double(py.array.array('d',fm.freqs));
    model_out.power_spectrum = double(py.array.array('d', fm.power_spectrum));
    model_out.fooofed_spectrum = double(py.array.array('d', fm.fooofed_spectrum_));
    model_out.bg_fit = double(py.array.array('d', py.getattr(fm, '_bg_fit')));
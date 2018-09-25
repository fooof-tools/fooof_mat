function model_out = fooof_get_model(fm)

    model_out = struct();
    
    model_out.fooof_freqs = double(py.array.array('d',fm.freqs));
    model_out.power_spectrum = double(py.array.array('d', fm.power_spectrum));
    model_out.fooof_spectrum = double(py.array.array('d', fm.fooofed_spectrum_));
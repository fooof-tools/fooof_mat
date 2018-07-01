# Matlab -> Python -> Matlab

This folder contains examples for a suggested workflow for using FOOOF in a Matlab pipeline, in which you process and analyze the data mostly in Matlab, but do the FOOOF fitting directly in Python.

This suggested workflow is to:
- A) Pre-process all data in Matlab, up to the point of creating and saving out power spectra
- B) Switch to Python, load these power spectra, explore and fit FOOOF models, then save out FOOOF results
- C) Continue analysis of the FOOOF results in Matlab

In this folder you will find two examples of this workflow, one showing the outline with a single PSD, and another showing how you can update this workflow to analyze multiple power spectra.

You can also use these files as templates - just download this folder, and update the files as you need to to use your data.

Note that as outlined the Python parts are done in notebooks, which allows for easy access to the plotting and exploration tools in FOOOF. When you have settled on parameters and so on, you can instead run this part as a Python script.
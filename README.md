# Spectral Parameterization - Matlab Wrapper

This repository offers a Matlab wrapper for [specparam](https://github.com/fooof-tools/fooof).

The main documentation for spectral parameterization is on the [documentation site](https://fooof-tools.github.io/fooof/).

This repository describes the Matlab wrapper, in which you call the Python implementation of FOOOF from Matlab, 
without having to interact directly with Python. Under the hood, this approach does still use the Python code 
of the original implemetation. 

## Other Matlab Workflows

An alternative to using the wrapper from Matlab, you can also try the
[Matlab->Python->Matlab](https://github.com/fooof-tools/mat_py_mat)
approach. In this approach, there are examples of how to spectral parameterization, in Python, 
integrated into a primarily Matlab workflow.

Alternately, there are also some toolboxes which have integrated the spectral parameterization
algorithm, including re-implementations such that you don't have to use / install Python. 

The spectral parameterization algorithm has also been implemented in the following Matlab toolboxes:
- The [Brainstorm](https://neuroimage.usc.edu/brainstorm/Introduction) toolbox, with an associated
[tutorial](https://neuroimage.usc.edu/brainstorm/Tutorials/Fooof)
- The [Fieldtrip](https://www.fieldtriptoolbox.org/) toolbox, with an associated
[tutorial](https://www.fieldtriptoolbox.org/example/fooof/)

## FOOOF_MAT

The Matlab wrapper is Matlab code that calls the Python implementation of fooof. This requires that you have Python & fooof installed, but does not require you to ever use or write Python code yourself.

To use the wrapper, first install Python & fooof - there are instructions to do so below. Then clone or download this repository, and use the provided Matlab code to do spectral parameterization. Typically, the only function you will need to run is 'fooof.m', which has documentation on inputs and outputs.

Note that this is a very minimal wrapper - it provides access only to the core algorithm, and does not offer access to most of the extra utilities in the Python module. However, since the fitting algorithm is the core purpose of the module, you do have full access to the model itself, including all inputs settings and model outputs.

#### Dependencies

This Matlab wrapper uses the Python support introduced by Matlab in 2014b, and as such requires that version, or higher, to run.

## Installing Python & fooof

Using the Matlab wrapper and/or the Mat-Py-Mat approach require that Python & fooof be installed. The easiest way to do this is as follows:

#### Install Python

To call Python from Matlab, you will need to have Python installed.

One option to install Python, as well as all the dependencies you need and including tools like Jupyter notebook, is to use the Anaconda distribution. To do so, go to the [Anaconda Website](https://www.anaconda.com/download/) and download the latest version Python3 version available. Install the file you download, and then you should be good to go!

Note that your computer may already have a version of Python, but you should still go an install a new one. This ensures that you can have a new version of Python where you can install new modules, without interfering  with your system Python.

You can also install Python without using Anaconda, for example directly from [python.org](https://www.python.org/downloads/). This might be useful, as Matlab doesn't always seem to work well with the Anaconda distribution.

If you are having trouble getting Python set up with Matlab, this
[blog post](https://irenevigueguix.wordpress.com/2020/03/25/loading-python-into-matlab/)
also offers a step-by-step guide.

#### Install FOOOF

FOOOF can be installed through pip, meaning you just have to run the following from the command line:

`pip install fooof`

If you're on mac, 'command line' means terminal - after installing anaconda, just copy the above command into the terminal, and it should work. If you're on windows, you will need to run this in 'anaconda command prompt' which is basically a command line specifically for managing Python with Anaconda.

#### Calling Python from Matlab

Once you have downloaded Python, you shouldn't need to do anything for Matlab to be able to
[call Python](https://www.mathworks.com/help/matlab/call-python-libraries.html).

The most common problem seems to be if Matlab is not using the correct version or location for Python. If calling Python is not working, then checking and setting where Matlab is calling Python from is likely the solution.

To check and update which Python Matlab is using, you can use
[pyversion](https://www.mathworks.com/help/matlab/ref/pyversion.html), or
[pyenv](https://www.mathworks.com/help/matlab/ref/pyenv.html)
if you are on a newer version of Matlab (>= R2019b).

For example, you can run `pyversion` to see which Python you are using, and update it if required.

Note that you must do this _after installing Python and FOOOF_.
```
% Check which python is being used
pyversion

% The print out from above should tell you which Python you are calling
%  It should show that you are using Python version 3.X
%  If you are using anaconda, it should show your Python is in the anaconda folder
%  If either of these things are not right, reset which Python you are using, as below

% Set python version to use
%  Note: you must do this first thing after opening Matlab (relaunch if you need to)
%  You should only ever have to run this at most, once.
%  You might need to change the path to where your python or anaconda install is
%    For example, your anaconda folder might be `anaconda3` instead of `anaconda`
%    or your anaconda path might be somewhere else, for example, '/opt/anaconda3/bin/python'
pyversion('/anaconda/bin/python')
```

## Reference

If you use this code in your project, please cite::

    Donoghue T, Haller M, Peterson EJ, Varma P, Sebastian P, Gao R, Noto T, Lara AH, Wallis JD,
    Knight RT, Shestyuk A, & Voytek B (2020). Parameterizing neural power spectra into periodic
    and aperiodic components. Nature Neuroscience, 23, 1655-1665.
    DOI: 10.1038/s41593-020-00744-x

Direct link: https://doi.org/10.1038/s41593-020-00744-x

More information for how to cite this method can be found on the 
[reference page](https://fooof-tools.github.io/fooof/reference.html).

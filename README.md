HYDRUS-1D source code
=====================

The original code is distributed under the terms of the [GNU General Public License](http://www.gnu.org/licenses/gpl-3.0.txt)
and available for download at https://www.pc-progress.com/en/Default.aspx?hydrus-1d

This repository host the Phydrus optimised Fortran code for the Hydrus-1D Model (c) PC-Progress.


Build
-----

This step explain how to build source on Unix or Windows machines.
You can find more explanations (compilers requirements for example) on compiling the Fortran Code
[here](https://phydrus.readthedocs.io/en/latest/getting_started/compilation.html), and
discussion [here](https://github.com/phydrus/phydrus/discussions/categories/compiling-fortran-code).


### Unix-based environment

```bash
make
# optionally:
make install
```

The latter command will copy the `bin/hydrus` binary to `$HOME/.local/bin` for easy of use.
This part is not mandatory, you can add the binary path of your choice in `phydrus`.
If you use this install command, please make sure local bin directory is added in your
`$PATH` environment variable.

### Windows

With cmd opened in the current dir:

```
.\make.bat
```

Then you need to copy the `bin/hydrus.exe` to a convenient location and use that location
in `phydrus`.


Reference
---------

Šimůnek, J., M. Th. van Genuchten, and M. Šejna, Development and applications of the HYDRUS and STANMOD software
packages, and related codes, Vadose Zone Journal, doi:[10.2136/VZJ2007.0077](https://doi.org/10.2136/VZJ2007.0077),
Special Issue "Vadose Zone Modeling", 7(2), 587-600, 2008.

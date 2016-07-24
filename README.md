# bash-scripts
Collection of scripts

## Tested distro:
Ubuntu 16.04 LTS

## install_gsl
Downloads, installs and exports the environment variables of the GNU Scientific Library (GSL). Usage: <br/>
```bash
sh install_gsl.sh installPath
```
To get GSL working with NetBeans: <br/>
> Add library headers: Tools > Options > C/C++ > Code Assistence > C Compiler > Add: installPath/include <br/>
> Add environment variable to debug and run: Project Properties > Run > Environment > Add: Name: LD_LIBRARY_PATH	Value: installPath/lib <br/>
> Add includes path to makefile's flags: CFLAGS = -I/home/remoto/jorge.martinez.sanchez/dev/include <br/>

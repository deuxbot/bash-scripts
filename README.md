# bash-scripts
Collection of scripts

## Tested distro:
Ubuntu 16.04 LTS

## install_cmake
Downloads and installs CMake. Usage: <br/>
```bash
sh install_cmake.sh installPath
```
## install_flann
Downloads and installs Fast Library for Approximate Nearest Neighbors(FLANN). Usage: <br/>
```bash
sh install_flann.sh installPath
```
To get FLANN working with NetBeans: <br/>
> Add library headers: Tools > Options > C/C++ > Code Assistence > C Compiler > Add: installPath/include <br/>
> Add environment var: Project Properties > Run > Environment > Add: Name: LD_LIBRARY_PATH	Value: installPath/lib <br/>
> Add include path to makefile's flags: CFLAGS = -I/installPath/include <br/>

## install_gsl
Downloads, installs and exports the environment variables of the GNU Scientific Library (GSL). Usage: <br/>
```bash
sh install_gsl.sh installPath
```
To get GSL working with NetBeans: <br/>
> Add library headers: Tools > Options > C/C++ > Code Assistence > C Compiler > Add: installPath/include <br/>
> Add environment var: Project Properties > Run > Environment > Add: Name: LD_LIBRARY_PATH	Value: installPath/lib <br/>
> Add include path to makefile's flags: CFLAGS = -I/installPath/include <br/>

## avg_time
Get the average execution time of a code snippet from various output files of a qsubed job.  Usage: <br/>

```bash
sh avg_time.sh
```

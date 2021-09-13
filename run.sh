#!/bin/bash

set -e
set -x

FC="pgf90  -mp -fPIC -Minfo -gopt -Mlarge_arrays -Mlist -traceback -Mnofma -Mbyteswapio -Mbackslash -O0 -g"
CC="pgcc -g -O0"

rm -f a.out *.o *.mod

$FC -c dist_grid_ctl_mod.F90
$FC -c master.F90 

$FC *.o

ulimit -s unlimited

gdb -ex=run --args ./a.out

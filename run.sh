#!/bin/bash

FC="/home/gmap/mrpm/marguina/install/gmkpack_support/wrapper/PGI217/mpif90  -mp -fPIC -Minfo -gopt -Mlarge_arrays -Mlist -traceback -Mnofma -Mbyteswapio -Mbackslash -O0 -g"
CC="/home/gmap/mrpm/marguina/install/gmkpack_support/wrapper/PGI217/mpicc -g -O0"

rm -f a.out

$FC -c dist_grid_ctl_mod.F90
$FC -c master.F90 edist_grid.F90
$CC -c stack.c

$FC *.o

./a.out

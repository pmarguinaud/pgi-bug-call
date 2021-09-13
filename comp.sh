#!/bin/bash

FC="/home/gmap/mrpm/marguina/install/gmkpack_support/wrapper/PGI217/mpif90  -mp -fPIC -Minfo -gopt -Mlarge_arrays -Mlist -traceback -Mnofma -Mbyteswapio -Mbackslash   -DBULL -DLINUX -DLITTLE_ENDIAN -DLITTLE -DADDRESS64 -DGRIB_API_1 -O0 -g  -DINTEL_BUG_LAIDDIOBSAD -DINTEL_BUG_MPOBSEQ"
CC="/home/gmap/mrpm/marguina/install/gmkpack_support/wrapper/PGI217/mpicc -g -O0"

$FC -c dist_grid_ctl_mod.F90
$FC -c master.F90 edist_grid.F90
$CC -c tata.c

$FC *.o


#! /bin/sh -l

module purge
module load mpt/2.06 intel/12-12.0.4.191 netcdf/4.1.3-intel
#module use /home/Fei.Liu/Modulefiles
module use /home/Gerhard.Theurich/Modulefiles
#module load esmf/7.0.0bs01-netcdf4.1.3
#module load esmf/7.0.0bs04-netcdf4.1.3
module load esmf/7.0.0bs05-netcdf4.1.3
#set ESMFMKFILE=/home/Gerhard.Theurich/ESMF-INSTALLS/700bs01-Intel12.1.0.233-MPT2.06-NetCDF4.1.3/lib/esmf.mk
#set ESMFMKFILE=/home/Fei.Liu/noscrub/ESMF/esmf/DEFAULTINSTALLDIR/lib/libO/Linux.intel.64.mpi.default/esmf.mk
module list
echo "ESMF makefile: $ESMFMKFILE"
echo ''

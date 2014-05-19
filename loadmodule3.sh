#! /bin/sh -l

module purge
#module load nco/4.0.8 mpt/2.06 icc/12-12.0.4.191 ifc/12-12.0.4.191 imkl/12-12.0.4.191 intel/12-12.0.4.191
#module load nco/4.0.8 mpt/2.06 intel/12-12.0.4.191 netcdf/4.1.3-intel
module load nco/4.0.8 mpt/2.06 intel/12-12.0.4.191 netcdf
module use /contrib/modulefiles
module load ncep
module use /home/Gerhard.Theurich/Modulefiles
#module load esmf/6.3.0bs14-netcdf4.1.3
#module load esmf/6.3.0r-netcdf4.1.3
#module load esmf/7.0.0bs01-netcdf4.1.3
module load esmf/6.3.0bs04-netcdf3.6.3
module list
echo "ESMF makefile: $ESMFMKFILE"
echo ''

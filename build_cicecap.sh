#! /bin/sh -l

echo ""
echo "=================================================================="
echo "=   build nems cice cap component                                 ="
echo "=   SYNTAX:                                                      ="
echo "=     build_cicecap                                               ="
echo "=                                                                ="
echo "=================================================================="


cwd=$(pwd)

source ~/bin/loadmodule.sh

echo "Changing direction to $HOME/github/lanl_cice_cap"
echo ""
cd $HOME/github/lanl_cice_cap

gmake

cd $cwd

module list

# grep -e ">>>" -e "<<<" PET0

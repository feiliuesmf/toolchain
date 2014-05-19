#! /bin/sh -l

echo ""
echo "=================================================================="
echo "=   build nems mom cap component                                 ="
echo "=   SYNTAX:                                                      ="
echo "=     build_momcap                                               ="
echo "=                                                                ="
echo "=================================================================="


compile_src=${1:-NO}
config_src=${2:-NO}


cwd=$(pwd)

source ~/bin/loadmodule.sh

echo "Changing direction to $HOME/github/nems_mom_cap"
echo ""
cd $HOME/github/nems_mom_cap

gmake

cd $cwd

module list

# grep -e ">>>" -e "<<<" PET0

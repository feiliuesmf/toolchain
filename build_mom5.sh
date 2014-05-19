#! /bin/sh -l

echo ""
echo "=================================================================="
echo "=   build MOM5 for NEMS                                          ="
echo "=   SYNTAX:                                                      ="
echo "=     build_mom5                                                 ="
echo "=                                                                ="
echo "=================================================================="


momexp_dir=${1:-$HOME/github/mom/exp}
cwd=$(pwd)

source ~/bin/loadmodule.sh

echo "Changing direction to $momexp_dir"
echo ""
cd $momexp_dir

./MOM_compile.csh --platform zeus --type MOM_solo --experiment box1

cd $cwd

module list

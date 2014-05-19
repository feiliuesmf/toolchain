#! /bin/bash

if [[ $# -lt 1 ]];
  then echo "Illegal number of parrameters: setup_mom_input.sh dst_dir"
  exit 1
fi

dst_dir=$1
if [[ ! -d $dst_dir ]]; then
  echo "Destination direction $dst_dir does not exist"
  exit 2
fi

# clean up dst_dir if needed
rm -rf $dst_dir/RESTART/                                         
rm -rf $dst_dir/input.nml

# copy core forcing data set and grid file for mom5
cp -r /home/Fei.Liu/noscrub/global_box1/INPUT/ $dst_dir
cp /home/Fei.Liu/noscrub/global_box1/INPUT/input.nml $dst_dir
cp /home/Fei.Liu/noscrub/global_box1/INPUT/diag_table $dst_dir
cp /home/Fei.Liu/noscrub/global_box1/INPUT/field_table $dst_dir
cp /home/Fei.Liu/noscrub/global_box1/INPUT/data_table $dst_dir
cp /home/Fei.Liu/noscrub/global_box1/INPUT/grid_spec.nc $dst_dir
#cp /home/Fei.Liu/noscrub/global_box1/INPUT/ocean_hgrid.nc $dst_dir
mkdir $dst_dir/RESTART
mkdir $dst_dir/restart
mkdir $dst_dir/history
cp -r /home/Fei.Liu/noscrub/lanl_cice/restart/* $dst_dir/restart
cp -r /home/Fei.Liu/noscrub/lanl_cice/ice_in $dst_dir
cp -r /home/Fei.Liu/noscrub/lanl_cice/grid $dst_dir
cp -r /home/Fei.Liu/noscrub/lanl_cice/kmt $dst_dir
cp -r /home/Fei.Liu/noscrub/lanl_cice/global_gx3_gridspec.nc $dst_dir

exit 0

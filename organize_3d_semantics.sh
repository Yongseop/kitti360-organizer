#!/bin/bash

root_dir=KITTI-360
mkdir -p $root_dir

####### data_3d_semantics #######
zip_file=data_3d_semantics.zip
unzip -d ./${root_dir} ${zip_file} 

zip_file=data_3d_semantics_test.zip
unzip -d ./${root_dir} ${zip_file} 
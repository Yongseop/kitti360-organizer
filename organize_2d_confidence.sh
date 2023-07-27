#!/bin/bash

root_dir=KITTI-360
mkdir -p $root_dir

####### data_2d_confidence #######
zip_file=data_2d_confidence.zip
unzip -d ./${root_dir} ${zip_file}

zip_file=data_2d_confidence_image_01.zip
unzip -d ./${root_dir} ${zip_file}
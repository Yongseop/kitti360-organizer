#!/bin/bash

root_dir=KITTI-360
mkdir -p $root_dir

## calibration.zip
zip_file=calibration.zip
unzip -d ./${root_dir} ${zip_file} 

## data_2d_confidence -> organize_2d_confidence

## data_2d_semantics.zip
zip_file=data_2d_semantics.zip
unzip -d ./${root_dir} ${zip_file} 
zip_file=data_2d_semantics_image_01.zip
unzip -d ./${root_dir} ${zip_file} 

## data_2d_test, slam --> skip

## data_3d_bboxes.zip
zip_file=data_3d_bboxes.zip
unzip -d ./${root_dir} ${zip_file} 

## data_3d_semantics -> organize_3d_semantics

## data_3d_ssc, test --> skip

## data_poses
data_dir=data_poses
zip_file=data_poses.zip
mkdir -p $root_dir/$data_dir
unzip -d ./${root_dir}/${data_dir} ${zip_file} 

zip_file=data_poses_oxts.zip
unzip -d ./${root_dir} ${zip_file} 

zip_file=data_poses_oxts_extract.zip
data_dir=data_poses_oxts_extract
mkdir -p $root_dir/$data_dir
unzip -d ./${root_dir}/${data_dir} ${zip_file} 
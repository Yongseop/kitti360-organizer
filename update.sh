#!/bin/bash

rsync -ahrvP /run/user/1000/gvfs/smb-share:server=XXX.XXX.XXX.XXX,share=kitti360/ .

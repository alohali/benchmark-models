#!/bin/sh


cd /data/local/tmp/ncnn
chmod +x benchncnn
chmod +x benchncnn_arm
./benchncnn_arm 16 1 0 > ncnn.log
./benchncnn 16 1 0 0 >> ncnn.log

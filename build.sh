#!/bin/sh

target_dir=$(cd $(dirname $0); pwd)
echo $target_dir

cd $target_dir/clib

ln -sf liblgui3-1.0.0.so liblgui3.so
ln -sf libfreetype.so.6.12.6 libfreetype.so.6 
ln -sf libfreetype.so.6 libfreetype.so
ln -sf libjpeg.so.8.0.2 libjpeg.so.8
ln -sf libjpeg.so.8 libjpeg.so
ln -sf libpng14.so.14.5.0 libpng14.so.14
ln -sf libpng14.so.14 libpng14.so 
ln -sf libpng14.so libpng.so

ln -sf libVideoDec-1.6.3.so libVideoDec.so
ln -sf libz.so.1.2.8 libz.so.1
ln -sf libz.so.1 libz.so


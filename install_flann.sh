#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Usage ./install_flann.sh installPath"
	exit
fi
DEST_PATH=$1
FILE_NAME=flann-1.8.4-src
wget http://www.cs.ubc.ca/research/flann/uploads/FLANN/$FILE_NAME.zip
unzip $FILE_NAME
rm $FILE_NAME.zip
cd $FILE_NAME
mkdir build
cd build
cmake ..
make
sed -i "s#/usr/local#$DEST_PATH#" cmake_install.cmake 
make install


#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Usage ./install_cmake.sh installPath"
	exit
fi
DEST_PATH=$1
FILE_NAME=cmake-3.6.2
wget https://cmake.org/files/v3.6/$FILE_NAME.tar.gz
tar -xzvf $FILE_NAME.tar.gz 
rm $FILE_NAME.tar.gz
cd $FILE_NAME
./bootstrap --prefix=$DEST_PATH
make
make check
make install
rm -rf ../$FILE_NAME

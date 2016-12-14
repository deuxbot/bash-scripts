#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Usage ./install_boost.sh installPath"
	exit
fi
DEST_PATH=$1
FILE_NAME=boost_1_62_0
wget http://downloads.sourceforge.net/project/boost/boost/1.62.0/boost_1_62_0.tar.gz
tar -xzvf $FILE_NAME.tar.gz 
rm $FILE_NAME.tar.gz
cd $FILE_NAME
./bootstrap.sh --prefix=/home/remoto/jorge.martinez.sanchez/dev
./b2 install
echo "export Boost_INCLUDE_DIR=$DEST_PATH/include:$PATH" >> ~/.bashrc 
echo "export Boost_LIBRARY_DIRS=$DEST_PATH/lib:$PATH" >> ~/.bashrc 
rm -rf ../$FILE_NAME




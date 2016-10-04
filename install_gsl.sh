#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Usage ./install_gsl.sh installPath"
	exit
fi
DEST_PATH=$1
FILE_NAME=gsl-2.1
wget ftp://ftp.gnu.org/gnu/gsl/$FILE_NAME.tar.gz 
tar -xzvf $FILE_NAME.tar.gz 
rm $FILE_NAME.tar.gz
cd $FILE_NAME
./configure --prefix=$DEST_PATH
make
make check
make install
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DEST_PATH/lib" >> ~/.bashrc 
echo "export LIBRARY_PATH=$LIBRARY_PATH:$DEST_PATH/lib" >> ~/.bashrc 
rm -rf ../$FILE_NAME

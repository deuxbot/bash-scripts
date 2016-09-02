#!/bin/bash
JOB=lidar
STR='RGW normals'
UNIT=' s' 
OUT=times.txt
COLS=4 # Number of thread configurations
if [ -f $OUT ]; then
    rm $OUT
fi
for file in $(find -maxdepth 1 -type f  -name "*$JOB.o*"); do
  echo "Reading $file..."
  grep -w "$STR" $file | while read -r line; do
        l=$(echo $line | grep -o "[0-9]\+.[0-9]\+$UNIT" | tr -d "$UNIT")
        echo "$l" | tr '\n' ' ' >> $OUT
  done
  echo '' >> $OUT
done
avgs=''
for i in $(seq 1 $COLS); do
  avg="$(awk -v col=$i '{ total += $col; count++ } END { print total/count }' $OUT) "
  avgs=$avgs$avg
done
echo '\n'$avgs >> $OUT
echo 'Means:' $avgs

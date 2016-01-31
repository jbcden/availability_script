#!/bin/bash

# STEP 1
#awk 'NR%2!=0{print $0}' log > tlog # deletes every other line in a file

# combines two lines into one and reverses the field ordering
#awk 'NR%2{printf $0" ";next;}1' tlog | sed 's/  */ /g' | awk '{print $2, $1}' >apples

#cat tlog | tr -d '\r' # gets rid of DOS newlines

# STEP 2
# all together
#cat tlog | tr -d '\r' | awk 'NR%2{printf $0" ";next;}1' | sed 's/  */ /g' | awk '{print $2, $1}'

path=$1

# parse the expect output to get the CPU usage and machine
awk 'NR%2!=0{print $0}' $path/log > $path/tlog # deletes every other line in a file

cat $path/tlog | tr -d '\r' | awk 'NR%2{printf $0" ";next;}1' | sed 's/  */ /g' | awk '{print $2, $1}' | sort -nr

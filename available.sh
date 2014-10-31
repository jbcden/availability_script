#!/bin/bash
source .secrets

readarray machines < .servers.txt

mach_size=${#machines[@]}

# if this signal is not caught it is impossible
# to kill the program without using kill -15 $pid.
trap "exit 0" SIGINT

counter=0

for ((i = 0 ;i < $mach_size;i++)); do
#echo "pandas"
#echo $counter
if [ ! -z "${machines[$i]}" ]
then 
	# parentheses surrounding a command open a subshell
	# the ret val of subshell can be seen in $? as usual
	(./expect_available.sh ${machines[$i]} $PASSWORD)
fi
done

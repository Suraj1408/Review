#!/bin/bash
randomnum=$((1000+RANDOM%1000))

for (( i=2; i<$randomnum; i++ ))
do
	res=$(($randomnum%$i))
  
	if [ $res -eq 0 ]
	then
		flag=0
	else
		((occur+=1))
		flag=1
	fi
done
if [ $flag -eq 1 ]
then
	echo "$randomnum  occures $occur time"
fi

#!/bin/bash

find $D -type f | while read F
do
	filename=`basename $F`
	len=${#filename}
	if [ $len -lt 8 ]
	then
		echo $filename
		if file "$F" | grep -q "ASCII text"
		then
			head -n 10 "$F"
		fi
	fi
done


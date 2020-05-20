#!/bin/bash
D=$1

for D in $@
do
	if test -f $D
	then
		echo $D
		chr=`ls -l "$D" | awk '{print $5}'`
		echo $chr
		nr_lines=`cat $F| wc -l`
		echo $nr_lines
	elif test -d $D
	then 
		echo $D 
		echo "`find $D -type f| wc -l`"
	else 
		echo $D is not a file or directory
	fi
done


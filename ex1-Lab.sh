#!/bin/bash
export s=0
export nr=0
D=$1

find $D -type f -name '*.txt'|( while read f
	do
		n=`ls -l $f | awk '{print $5}'`
		if test $n -gt 0; then
			s=$(( $s + $n ))
			((nr++));
		fi
	done
echo Average is: $((s/nr)))

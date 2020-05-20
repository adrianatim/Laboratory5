#!/bin/bash

D=$1

find $D -type f | (while read f;
do
	if egrep '[0-9]{6,}' "$f"; then
		basename $f
		echo $f
	fi
done )

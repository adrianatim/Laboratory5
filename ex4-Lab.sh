#!/bin/bash

D=$1

find $D -type f -perm -222| (while read f
do 
	mv "$f" "$f.all"
done)

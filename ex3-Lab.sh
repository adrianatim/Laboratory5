#!/bin/bash

find -type f -name "*.txt"| (while read f
do
	if wc -l "$f" -ge 10
	then
		head -n 5 "$f" | tail -n 5 "$f"
	else 
		cat "$f"
	fi
done)

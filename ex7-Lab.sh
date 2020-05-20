#!/bin/bash

for F in $@
do
	if test -f $F
	then
		cat $F | awk 'BEGIN{n}
		{if(!f[$0]) lines[n++]=$0
		f[$0]++
		}
		END{max=0
		for(i=0;i<n;i++) if(f[lines[i]]>max){max=f[lines[i]]; maxLine=lines[i]}
		print max " " maxLine}'
	fi
done | sort -f | cut -f2- -d' '

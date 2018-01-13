#! /bin/bash

declare -a ITEM=()

i=0
while read line;do
	ITEM[$i]="$line"
	i=$(($i+1))
done < README.md

for i in ${!ITEM[@]};do
	echo "${ITEM[$i]}"
done

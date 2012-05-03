#!/bin/bash
while read linha
do
	usuario=`echo $linha | cut -d" " -f1` 
	site=`echo $linha | cut -d" " -f2`
	if [ "$usuario" = "$1" ]
		then
		echo "$usuario visitou $site"
	fi
done < sitevisitado
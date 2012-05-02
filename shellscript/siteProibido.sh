#!/bin/bash
for verifUsuario in $*
do
   while read linha
   do
     while read verifSite
     do
		usuario=`echo $linha | cut -d" " -f1`
        site=`echo $linha | cut -d" " -f2`
		if [ "$usuario" = "$verifUsuario" -a "$site" = "$verifSite" ]
			then
			echo "$usuario visitou o site proibido $site"
		fi
     done < siteproibido
   done < sitevisitado
done
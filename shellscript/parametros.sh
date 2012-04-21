#!/bin/bash
#UFPI
#S02 - Lailson Henrique
#
#Mostra na tela todos os parâmetros recebidos na linha de comando, contandos-os
i=1
for var in $*
do 	
	echo "parametro $i: $var"
	let i++
done

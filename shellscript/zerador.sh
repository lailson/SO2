#!/bin/bash
#UFPI
#S02 - Lailson Henrique
#
#Mostrar os numeros de n ate 0, onde n eh um parametro
if test $# -ne 1
 then
	echo numero de parametros invalido
 else
 i=$1
 STR=$i
 while test $i -gt 0
 do 
	export STR=$STR" "`expr $i - 1`
	let i--
 done
echo $STR
fi
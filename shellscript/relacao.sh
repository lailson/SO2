#!/bin/bash
#UFPI
#S02 - Lailson Henrique
#
#Imprime a relação entre dois parametros numericos
if ( test $1 -eq -1 && expr $2 + 1 >& /dev/null ) || (expr $1 + 1  >& /dev/null && test $2 -eq -1) || (test $1 -eq -1 && test $2 -eq -1) 
then
	
if test $# -ne 2
then
	echo numero de parametros invalido
else

if test $1 -eq $2
then
	echo Parametros iguais. '('$1 = $2')'
else
	if test $1 -lt $2
	then
		echo $1 menor do que $2. '('$1 '<' $2')'
	else
		echo $1 maior do que $2. '('$1 '>' $2')'
	fi
fi
fi
else
	echo erro
fi
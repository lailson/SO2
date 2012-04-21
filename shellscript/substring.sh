#!/bin/bash
#UFPI
#S02 - Lailson Henrique
#
#Verifica se a substring o parametro1 esta contido na string do parametro2
if echo $2 | grep $1 >& /dev/null
then
	echo $1 esta contido em $2
fi
#!/bin/bash
#UFPI
#S02 - Lailson Henrique
#
#Mostra os grupos dos usuarios
ARQUIVO=`cat /etc/group | cut -f 1 -d ":"`
for i in $ARQUIVO
do
	echo $i
	echo ----------
done
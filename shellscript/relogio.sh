#!/bin/bash
#UFPI
#S02 - Lailson Henrique
#
#Mostra um relogio
while true
do
	clear
	cal
	echo Data: `date|awk '{print $3}'` de `date|awk '{print $2}'` de `date|awk '{print $6}'`
	echo ------------------------------------
	echo `date | awk '{print $4}'`
	echo ------------------------------------
	sleep 1
done
#!/bin/bash
while true
do 
clear
cat<<!
menu de Usuario
1- ls
2 - ps -f
3 - who
4 - exit
Digite sua opcao:
!

while
tput cup 11 34 ; read opt [ "$opt" = "" ]
do
: #Comadndo NULL (Apenas para o loop ocorrer)
done
case $opt in
	1) clear 
		ls ;; 
	2) clear
		ps -f ;; 
	3) clear
		who ;; 
	4) clear
	echo Adios Amigo
	exit 0 ;; 
	*) clear #default
		echo opcao invalida !
		sleep 1 done
	;;
esac
echo Tecle Enter para continuar "\c"
read
done





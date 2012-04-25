#!/bin/bash
while true
do 
clear
cat<<!
menu de Usuario
1 - Ver processos ativos
2 - Mostrar os files system da máquina
3 - Mostrar a quanto tempo a maquina estar no ar
4 - Usuarios ativos na maquina
5 - Versao de kernel
6 - Lista de usuarios da maquina
7 - Sair .
Digite sua opcao:
!

while
tput cup 11 34 ; read opt [ "$opt" = "" ]
do
: #Comadndo NULL (Apenas para o loop ocorrer)
done
case $opt in
	1) clear 
		ps aux ;; 
	2) clear
		df | awk '{print $1}' ;; 
	3) clear
		uptime | awk '{print $3}' ;;
	4) clear
		who | awk '{print $1}' ;;
	5) clear
		uname -a | awk '{print $7}' ;;
	6) clear
		cat /etc/passwd | cut -f 1 -d ":" ;;
	7) clear
		exit 0 ;;
	
	*) clear #default
		echo opcao invalida !
		sleep 1 done
	;;
esac
echo Tecle Enter para continuar "\c"
read
done
#!/bin/bash
#UFPI
#S02 - Lailson Henrique
#
#Do arquivo /etc/passwd, mostra todos os shells (ultimo campo)
#que os usuarios usam
#Nao mostrar linhas repetidas
cat /etc/passwd | cut -f 7 -d ":" | sort -u
#!/bin/bash
#UFPI
#S02 - Lailson Henrique
#
#Exercicio 1 
#Configurar saidas do IP, Mascaras de Rede, End. Mac e Gateway
echo O endereco IP : `ifconfig | grep "inet end" | awk '{print $3}' |grep -v 127.0.0.1`
echo A mascara eh .: `ifconfig | grep "inet end" | grep -v 127.0.0.1 | awk '{print $5}' | cut -f 2 -d ":"`
echo O endereco Mac: `ifconfig | grep "HW" | awk '{print $7}'`
echo O Gateway eh .: `route -n | awk '{print $2}' | tail -n 1`
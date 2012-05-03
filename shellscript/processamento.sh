#!/bin/bash
soma=0.0
for var in `ps aux | awk '{print $3}' | grep -v ^% | tr -s "," "."`
	do
		soma=$(echo "$soma + $var" | bc -l) 
done
if expr $soma '>' 50.0 &> /dev/null
	then
	echo "Processamento esta acima de 50%."
	echo "Processamenot = $soma%"
else
	echo "processamento esta abaixo de 50%"
	echo "Processamenot = $soma%"
fi
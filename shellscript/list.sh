#!/bin/bash
# ARQUIVO: list
#
numLinha=1
while read linha
do
  echo "$numLinha $linha" 
  numLinha=`expr $numLinha + 1`
done < $1 > newarq2
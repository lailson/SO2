#!/bin/bash
numero1=$1
numero2=$2
numero3=$3
op=-lt
#op=-lt

if test $numero1 $op $numero2 
then
   if test $numero1 $op $numero3
   then            
      if test $numero2 $op $numero3
      then
         echo "$numero1 $numero2 $numero3"
      else   
         echo "$numero1 $numero3 $numero2"
      fi
   else
         echo "$numero3 $numero1 $numero2"
   fi
else
   if test $numero1 $op $numero3
   then
      echo "$numero2 $numero1 $numero3"
   else
      if test $numero2 $op $numero3
      then
         echo "$numero2 $numero3 $numero1"
      else
         echo "$numero3 $numero2 $numero1"
      fi
   fi
fi
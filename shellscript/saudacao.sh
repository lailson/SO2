#!/bin/bash
result=`date | awk '{print $5}' |cut -f 1 -d ":"`
#result=$1
#echo $result
if test  $result -lt 6
	then
		echo "Boa noite!"
	else
	if test  $result -lt 12
		then
			echo "Bom Dia!"
	else
		if test  $result -lt 19
			then
				echo "Boa Tarde!"
		else
			echo "Boa Noite!"
		fi
	fi
fi
	
	
#!/bin/bash
function trataErro()
{
	echo "Vc pressionou ctr c"
	echo "mas n posso terminar agora"
}

#trap trataErro  SIGINT SIGTERM

for i in {1..10}
do sleep 1
echo "Dormindo"
done
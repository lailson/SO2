echo "Escreva o nome do arquivo e a palavra a ser pesquisada:"
read file word
if grep $word $file > /dev/null 
	then
	echo "A palavra $word existe no arquivo $file." 
fi
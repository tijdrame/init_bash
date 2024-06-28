#!/bin/bash
min=1
max=50

nombre=$[($RANDOM % ($[$max - $min] + 1)) + $min]
read -p "Entrer un chiffre: " GUEST
#echo "resultat $nombre"
while [ $GUEST != $nombre ]
do 
	if [ $GUEST -gt $nombre ]
	then
		echo "Le chiffre est plus grand"
		echo "Le chiffre a trouvé est entre 0 et 50."
	else 
		echo "Le chiffre est plus petit"
		echo "Le chiffre a trouvé est entre 0 et 50."
	fi
	read -p "Entrer un chiffre: " GUEST
done
echo "Trouvé le chiffre etait $nombre".

	
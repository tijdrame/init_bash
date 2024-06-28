#!/bin/bash
read -p "Merci d'entrer un chiffre?" COMPTEUR

while [ $COMPTEUR -gt 0 ]
do
echo "Le compteur est à $COMPTEUR"
#((COMPTEUR=COMPTEUR-1))
 COMPTEUR=$((COMPTEUR - 1))
#COMPTEUR=`expr $COMPTEUR - 1`
done
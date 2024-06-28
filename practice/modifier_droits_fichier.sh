#!/bin/bash
function verif_fichier_existe(){
       ls $1 2> /dev/null

       if [ $? -eq 0 ]
       then
                       # echo "Le fichier $FICHIER existe"
                        return 0
       else
                       # echo "Le fichier $FICHIER n'existe pas"
                        return 1
       fi
}

echo ""
read -p "Quel est le chemin absolu du fichier dont les droits seront modifiés" FICHIER
echo ""
verif_fichier_existe $FICHIER
if [ $? -eq 0 ]
then
        echo "Le fichier $FICHIER existe"
else
        echo "Le fichier $FICHIER n'existe pas"
        exit 1
fi

clear
echo ""
echo "Modification des droits du propriétaire du fichier"
echo ""
echo ""
read -p "Quels sont les nouveaux droits à appliquer ? (r pour lecture, w pour écriture, x pour exécution) :" DROITS
chmod u+$DROITS $FICHIER

clear
echo ""
echo "Modification des droits du groupe du fichier"
echo ""
echo ""
read -p "Quels sont les nouveaux droits à appliquer ? (r pour lecture, w pour écriture, x pour exécution) :" DROITS
chmod g+$DROITS $FICHIER

clear
echo ""
echo "Modification des droits des autres utilisateurs du fichier"
echo ""
echo ""
read -p "Quels sont les nouveaux droits à appliquer ? (r pour lecture, w pour écriture, x pour exécution) :" DROITS
chmod o+$DROITS $FICHIER
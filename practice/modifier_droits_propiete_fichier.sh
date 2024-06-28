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

read -p "Quel est le chemin absolu du fichier dont les droits vont être modifiés " FICHIER

verif_fichier_existe $FICHIER
if [ $? -eq 0 ]
then
        #echo "Le fichier $FICHIER existe"
        read -p "Quel est le nom de l'utilisateur propriétaire ?" CHOWNUSER
        read -p "Quel est le nom du groupe propriétaire ?" CHOWNGROUP
        chown $CHOWNUSER:$CHOWNGROUP $FICHIER

else
        echo "Le fichier $FICHIER n'existe pas"
        exit 1
fi
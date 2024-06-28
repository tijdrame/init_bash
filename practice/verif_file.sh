#!/bin/bash
FICHIERS=$@
NOMBRE_ARGUMENTS=$#

#Verification que l'utilisateur a bien saisi des arguments
function verif_arguments(){
        if [ $NOMBRE_ARGUMENTS -eq 0 ]
        then
                echo "Attention, vous n'avez pas saisi les noms des fichiers"
                exit 2
        fi
}
#Verification que le fichier n'existe pas déjà
function verif_fichier_existe(){
        for FICHIER in $FICHIERS
        do

                ls $FICHIER 2> /dev/null

                if [ $? -eq 0 ]
                then
                        echo "Le fichier $FICHIER existe"
                else
                        echo "Le fichier $FICHIER n'existe pas"
                fi
        done
}

verif_arguments
verif_fichier_existe $FICHIERS
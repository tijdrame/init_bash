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
echo ""
echo "1. Créer un fichier"
echo "2. Supprimer un fichier"
echo ""
echo ""
read -p "Quel est votre choix ?" CHOIX

case $CHOIX in
        1)
                read -p "Merci d'indiquer le chemin absolu du fichier à créer : " FICHIER
                verif_fichier_existe $FICHIER
                if [ $? -eq 0 ]
                then
                        echo "Le fichier $FICHIER existe"
                        exit 1
                else
                        touch $FICHIER && echo "Le fichier $FICHIER a bien été créé"
                fi
                ;;
        2)

                read -p "Merci d'indiquer le chemin absolu du fichier à créer : " FICHIER
                verif_fichier_existe $FICHIER
                if [ $? -eq 0 ]
                then
                        rm -Rf $FICHIER && echo "Le fichier $FICHIER a bien été supprimé"
                else
                        echo "Le fichier $FICHIER n'existe pas"
                        exit 2
                fi
                ;;
        *)
                echo "Merci d'indiquer votre choix avec un numéro compris entre 1 et 2"
                exit 3
                ;;
esac
#!/bin/bash
#Fonction verifiant si le fichier existe
function verif_fichier_existe(){
        ls -l $1 > /dev/null
        case $? in
                0)
                        echo "Le fichier $1 existe bien"
                        return 0
                        ;;
                *)
                        echo "Le fichier $1 n'existe pas"
                        return 1
                        ;;
        esac
}

#Verifie si l'utilisateur a bien indiqué un nom de fichier
if [ -z $1 ] || [ -z $2 ]
then
        echo "Attention a preciser un nom de fichier et l'action"
        echo "Actions disponibles :  copy, delete, ou read"
        exit 1
fi


#Execution de la fonction de verification
verif_fichier_existe $1
if [ $? -ne 0 ]
then
        exit 2
fi

#Actions à exécuter
case "$2" in
        copy)
                mkdir /tmp/script 2> /dev/null
                cp $1 /tmp/script/
                if [ $? -eq 0 ]
                then
                        echo "Le fichier $1 a bien été copié dans /tmp/script"
                else
                        echo "Une erreur a eu lieu au moment de la copie"
                        exit 3
                fi
                ;;
        delete)
                rm $1
                if [ $? -eq 0 ]
                then
                        echo "Le fichier $1 a bien été supprimé"
                else
                        echo "Une erreur a eu lieu au moment de la suppression"
                        exit 4
                fi
                ;;
        read)
                cat $1
                if [ $? -eq 0 ]
                then
                        exit 0
                else
                        echo "Une erreur a eu lieu au moment de la lecture"
                        exit 5
                fi
                ;;
esac
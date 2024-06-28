#!/bin/bash
HOTE=$1
NOMBRE_DE_PAQUET=$2
#ping -c $NOMBRE_DE_PAQUET $HOTE
ping $HOTE
if [ "$?" -ne "0" ]
then
	echo "L'hote $HOTE n'est pas joignable"
	exit 1
else
	echo "L'hote $HOTE est joignable"
	exit 0
fi

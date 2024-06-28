#!/bin/bash
PRENOM="Tidiane"
NOM="DRAME"
AGE="46"
echo "Bonjour $PRENOM $NOM, tu as ${AGE} ans et bienvenu."

MACHINE=`hostname`
echo "Une machine $MACHINE"

#VAL_TEST=[ -e hello.sh ]
[ -e hello.sh ]
#0 = true, 
echo $?
#echo $VAL_TEST
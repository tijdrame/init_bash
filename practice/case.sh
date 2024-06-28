#!/bin/bash
case $1 in 
	start|START)
	#[sS][tT][aA][rR][tT]
		/etc/init.d/apache2 start
		;;
	stop)
		kill $(cat /var/run/apache2/apache2.pid)
		;;
	*)
	echo "Vous devez saisir start ou stop"
	exit 1
	;;
esac
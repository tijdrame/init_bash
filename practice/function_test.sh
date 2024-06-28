#!/bin/bash

function internet(){
	ping 8.8.8.8
	if [ "$?" -eq "0" ]
	then
		echo "Connection internet établie"
		exit 0
	else
		echo "Connection internet pas établie"
		exit 1
	fi
}
internet
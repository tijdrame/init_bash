#!/bin/bash

function internet(){
	ping $1
	if [ "$?" -eq "0" ]
	then
		echo "Connection internet établie"
		return 0
	else
		echo "Connection internet pas établie"
		return 1
	fi
}
internet "8.8.8.8"
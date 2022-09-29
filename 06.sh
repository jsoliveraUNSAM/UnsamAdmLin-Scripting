#!/bin/bash

EXISTENCIA=`cat /etc/passwd | grep $1:`

# echo EXISTENCIA

if [ -z $EXISTENCIA ]
then #ejecuta si la variable EXISTENCIA es vacia
	adduser $1
else #ejecuta si la variable EXISTENCIA no esta vacia
	echo "El usuario ya existe en el sistema"
	echo "Ejecucion terminada"
fi

#!/bin/bash

NAME=$1
LAST_NAME=$2
SHOW=$3

if [ "$SHOW" = "true"];
then
	echo "Hola, $NAME $LAST_NAME"
else
	echo "Si quieres ver el nombre, selecciona la casilla de SHOW"
fi

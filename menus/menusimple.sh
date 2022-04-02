#! /bin/bash
VAR=0

while [[ $VAR -ne 4 ]]; do

echo "1- Listar el Script"
echo "2- Listar el Script desde la ultima linea a la primera" 
echo "3- Listar el script con las lineas invertidas de derecha a izquierda"
echo "4- Salir"

read VAR

	case $VAR in
		1) cat $0
		;;
		2) tac $0
		;;
		3) rev $0
		;;
		4) echo "Saliendo...."
		;;
	esac
done

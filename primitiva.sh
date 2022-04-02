#! /bin/bash
CONTADOR=0
declare -a RESULTADO
RESULTADO=(99)
while [ $CONTADOR  -lt 6 ];do

	let RANGO=$(( ( RANDOM % 49 ) + 1 ))
#En el caso de que estemos en el ultimo valor indicamos que
#debe ser entree 1 y 9 (Complementario)
 	if [[ $CONTADOR = 5 ]]; then
		let RANGO=$(( ( RANDOM % 9 ) + 1 ))
	fi

	for i in "${RESULTADO[@]}";
		do
			RESULTADO[$CONTADOR]=$RANGO

			if [[ "${RESULTADO[$CONTADOR]}" -eq $i ]]; then
	        	let CONTADOR=$CONTADOR-1
				break
			fi
	done

let CONTADOR=$CONTADOR+1

done

echo ${RESULTADO[*]}

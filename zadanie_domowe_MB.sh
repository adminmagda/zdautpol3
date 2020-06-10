#!/bin/bash

funkcja_kalkulator () {
	echo "Podaj pierwsza wartosc liczbowa"
	read a
	echo "podaj druga wartosc liczbowa"
	read b
	echo "Dodawanie: $((a + b))"
	echo "Mnożenie: $((a * b))"
}

funkcja_petla () {
	echo "Podaj liczbę mniejszą niż 10"
	read a
	if (( $a < 10 )); then
		for (( i = 1; i <= ${a}; i++)); do 
			echo ${i}
		done
	else 
		echo "Nieprawidłowy argument, koniec skryptu" 
		return
	fi	
}

case ${1} in
	kalkulator) funkcja_kalkulator;;
	petla) funkcja_petla;;
	*) echo 'Do przetestowania programu wybierz "kalkulator" albo "petla"';;
esac

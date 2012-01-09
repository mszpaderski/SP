#!/bin/bash

x=0;
while [ $x != 10 ]; do
	echo "Wybierz jedna z opcji, poprzez wpisanie jej numeru:"
	echo "1. Wyswietl pliki"
	echo "2. Usun plik"
	echo "3. Zmien nazwe"
	echo "4. Przenies plik"
	echo "5. Skopiuj plik do folderu"
	echo "10. Wyjdz z programu"

	read x

	case "$x" in
		"1") tree ;;
		"2") echo "Wpisz nazwe pliku"
		     read usun
		     rm -rf $usun ;;
		"3") echo "Wpisz nazwe pliku" 
		     read zmien
		     echo "Wpisz nowa nazwe"
		     read zmienna
		     mv $zmien $zmienna ;;
		"4") echo "Wpisz nazwe pliku"
		     read przen
		     echo "Wpisz nowa lokalizacje"
		     read przendo
		     mv $przen $przendo ;;
		"5") echo "Wpisz nazwe pliku"
		     read kop
		     echo "Gdzie skopiowac plik?"
		     read kopdo
		     cp $kop $kopdo ;;
		"10") echo "Koniec programu!" ;;
		*) echo "Zla opcja!"
	esac
done

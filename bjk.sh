#!/bin/bash

function menu()
{
	echo
	echo "  UEFA Champions League  "
	echo "    Round of 16 Draw     "
	echo "    ----------------     "
}

function mac()
{
	secim=$(($RANDOM%2))
	
	if [ $secim -eq 0 ]; then
		echo "       $3       "
		echo "   $1 - $2   "
		echo "       $4       "
		echo "   $2 - $1   "
	else
		echo "       $3       "
		echo "   $2 - $1   "
		echo "       $4       "
		echo "   $1 - $2   "
	fi
}

function takim()
{
	if   [ $1 -le 30 ]; then depteam="Chelsea"
	elif [ $1 -le 43 ]; then depteam="Real_Madrid"
	elif [ $1 -le 56 ]; then depteam="Sevilla"
	elif [ $1 -le 69 ]; then depteam="Juventus"
	elif [ $1 -le 79 ]; then depteam="Basel"
	elif [ $1 -le 89 ]; then depteam="Shakhtar_Donetsk"    
	elif [ $1 -le 99 ]; then depteam="Bayern_München"
	fi
}

bjk=$(($RANDOM%100))
evteam="Beşiktaş"
evdate="13.02.2018"
depdate="13.03.2018"

takim $bjk
menu
mac $evteam $depteam $evdate $depdate
	
echo
echo "Would you like to listen to Champions League theme music? (y/n)"
read secenek

if [ $secenek == "y" ]; then
	firefox https://www.youtube.com/watch?v=vJbg3Ur3FZc
	echo "Good Choice :-)"
elif [ $secenek == "n" ]; then
	firefox https://www.youtube.com/watch?v=NcNO_YDZOS4
	echo "Disappointment :-("
else	echo "Good Luck to Road of Kiev ;-)"
fi


#!/bin/bash -x

numberHeads=0
numberTails=0
for (( i=0 ; ; i++ ))
do

	flipCoin=$((RANDOM%2))
	if [ $flipCoin -eq 0 ]
	then
		((numberHeads++))
	else
		((numberTails++))
	fi
	if [ $numberHeads -eq 21 ]
	then
		echo "Heads win by $(($numberHeads-$numberTails))"
		break
	elif [ $numberTails -eq 21 ]
	then
		echo "Tails win by $(($numberTails-$numberTails))"
		break
	elif [[ $numberHeads -eq 20 && $numberTails -eq 20 ]]
	then
		echo "tie"
		break
	fi
done

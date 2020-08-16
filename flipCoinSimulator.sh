#!/bin/bash -x

numberHeads=0
numberTails=0
for (( i=0; i<=10; i++ ))
do

	flipCoin=$((RANDOM%2))
	if [ $flipCoin -eq 0 ]
	then
		((numberHeads++))
	else
		((numberTails++))
	fi
done
echo "heads won $numberHeads times and tails has won $numberTails times"

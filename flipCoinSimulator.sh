#!/bin/bash -x

numberHeads=0
numberTails=0
function coinFlip(){
coinFlip=$((RANDOM%2))
if [ $coinFlip -eq 0 ]
then
	((numberHeads++))
else
	((numberTails++))
fi
}
function tie(){
for (( j=0 ; ; j++ ))
do
	coinFlip
	if [ $(($numberHeads-$numberTails)) -ge 2 ]
	then
		echo "Heads win"
		break
	elif [ $(($numberTails-$numberHeads)) -ge 2 ]
	then
		echo "Tails win"
		break
	fi
done
}
for (( i=0 ; ; i++ ))
do
	coinFlip
	if [ $numberHeads -eq 21 ]
	then
		outcome=0
		break
	elif [ $numberTails -eq 21 ]
	then
		outcome=1
		break
	elif [ $numberHeads -eq 20 ] && [ $numberTails -eq 20 ]
	then
		outcome=2
		break
	fi
done
if [ $outcome -eq 2 ]
then
	outcomeAfterTie="$(tie)"
	echo $outcomeAfterTie
elif [ $outcome -eq 1 ]
then
	echo "Tails win by $(($numberTails-$numberHeads))"
elif [ $outcome -eq 0 ]
then
	echo "Heads win by $(($numberHeads-$numberTails))"
fi

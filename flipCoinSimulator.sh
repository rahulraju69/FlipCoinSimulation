#!/bin/bash -x


flipCoin=$((RANDOM%2))
if [ $flipCoin -eq 0 ]
then
	echo "heads is winner"
else
	echo "tails is winner"
fi

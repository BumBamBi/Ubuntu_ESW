#! /bin/bash

find_num(){
	ans=$((($RANDOM)%101))
	input=9999
	cnt=1

	until [ $ans == $input ]
	do
		echo -n "[$cnt] enter your guess [0 .. 100] : "; read input

		if [ $ans -gt $input ]
		then
			echo "answer is greater than $input"
		elif [ $ans -lt $input ]
		then
			echo "answer is less than $input"
		fi
		cnt=$((cnt+1))
	done

	echo "You are correct!"
}

find_num

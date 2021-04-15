#! /bin/bash

for_loop(){
	for i in $*;
	do
		echo "Hello $i"
	done
}

for_sum(){
	S=0

	for i in $(seq 1 100);
	do
		S=$((S+i))
	done
	echo $S
}

my_files(){
	FILES=$(ls)
	for file in $FILES
	do
		if [ ! -d $file ] && [ ! -x $file ];
		then
			echo $file $(cat $file | wc -w)
		fi
	done
}


# for_loop
# for_loop "KW" "IK" "HO"
# for_loop $1 $2 $3 #함수 인자로 넣기

# for_sum

my_files

#! /bin/bash

for_loop(){
for i in $*;
do
	 echo "Hello $i"
done
}

# for_loop "KW" "IK" "HO"
for_loop $1 $2 $3

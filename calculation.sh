#! /bin/bash -x
echo "welcome to calculation"

function div() {

	local a=$1
	local b=$2
	local c=$(echo $a $b | awk '{print $1/$b}' )
	echo $c

}

function add() {
	local a=$1
	local b=$2
	local c=$(( $a + $b))
	echo $c
}

function sub() {
	local a=$1
	local b=$2
	local c=$(( $a - $b))
	echo $c
}


a=15
b=13
result="$(add $a $b)"
echo $result

resultSub="$(sub $a $b)"
echo $resultSub

resutlDiv="$(div $a $b)"
echo $resultDiv

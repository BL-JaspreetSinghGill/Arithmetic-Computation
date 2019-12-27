#!/bin/bash -x

#ARITHMETIC COMPUTATION AND SORTING : USE CASE 2 -> Calculating a + b * c;

takeUserInput () {
	read -p "ENTER THE FIRST NUMBER : " firstNumber;
	read -p "ENTER THE SECOND NUMBER : " secondNumber;
	read -p "ENTER THE THIRD NUMBER : " thirdNumber;
}

arithmeticCalculation () {
	result=$(($firstNumber+$secondNumber*$thirdNumber));

	echo $result;
}

arithmeticMain () {
	takeUserInput;
	arithmeticCalculation;
}

arithmeticMain;

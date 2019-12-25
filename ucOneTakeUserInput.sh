#!/bin/bash -x

#ARITHMETIC COMPUTATION AND SORTING : USE CASE 1 -> TAKE THREE INPUTS FROM USER.

takeUserInput () {
	read -p "ENTER THE FIRST NUMBER : " firstNumber;
	read -p "ENTER THE SECOND NUMBER : " secondNumber;
	read -p "ENTER THE THIRD NUMBER : " thirdNumber;
}

arithmeticMain () {
	takeUserInput;
}

arithmeticMain;

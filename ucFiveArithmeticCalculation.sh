#!/bin/bash -x

#ARITHMETIC COMPUTATION AND SORTING : USE CASE 5 -> Calculating a % b + c;

takeUserInput () {
	read -p "ENTER THE FIRST NUMBER : " firstNumber;
	read -p "ENTER THE SECOND NUMBER : " secondNumber;
	read -p "ENTER THE THIRD NUMBER : " thirdNumber;
}

arithmeticCalculation1 () {
	result1=$(($firstNumber+$secondNumber*$thirdNumber));

	echo $result1;
}

arithmeticCalculation2 () {
   result2=$(($firstNumber*$secondNumber+$thirdNumber));

   echo $result2;
}

arithmeticCalculation3 () {
	result3=$(($thirdNumber+$firstNumber/$secondNumber));

	echo $result3;
}

arithmeticCalculation4 () {
	result4=$(($firstNumber%$secondNumber+$thirdNumber));

	echo $result4;
}

arithmeticMain () {
	takeUserInput;
	arithmeticCalculation1;
	arithmeticCalculation2;
	arithmeticCalculation3;
	arithmeticCalculation4;
}

arithmeticMain;

#!/bin/bash -x

#ARITHMETIC COMPUTATION AND SORTING : USE CASE 6 -> STORING RESULT OF EVERY COMPUTATION IN DICTIONARY.

declare -A arithmeticDictionary;

counter=1;

takeUserInput () {
	read -p "ENTER THE FIRST NUMBER : " firstNumber;
	read -p "ENTER THE SECOND NUMBER : " secondNumber;
	read -p "ENTER THE THIRD NUMBER : " thirdNumber;
}

arithmeticCalculation1 () {
	result1=$(($firstNumber+$secondNumber*$thirdNumber));
	storeResultInDictionary $result1;

	echo $result1;
}

arithmeticCalculation2 () {
   result2=$(($firstNumber*$secondNumber+$thirdNumber));
	storeResultInDictionary $result2;

   echo $result2;
}

arithmeticCalculation3 () {
	result3=$(($thirdNumber+$firstNumber/$secondNumber));
	storeResultInDictionary $result3;

	echo $result3;
}

arithmeticCalculation4 () {
	result4=$(($firstNumber%$secondNumber+$thirdNumber));
	storeResultInDictionary $result4;

	echo $result4;
}

storeResultInDictionary () {
	result=$1;

	arithmeticDictionary[$counter]=$result;
	((counter++));
}

displayDictionaryElements () {
	echo "KEYS : " ${!arithmeticDictionary[@]};
	echo "ELEMENTS IN DICTIONARY : " ${arithmeticDictionary[@]};
}

arithmeticMain () {
	takeUserInput;
	arithmeticCalculation1;
	arithmeticCalculation2;
	arithmeticCalculation3;
	arithmeticCalculation4;
	displayDictionaryElements;
}

arithmeticMain;

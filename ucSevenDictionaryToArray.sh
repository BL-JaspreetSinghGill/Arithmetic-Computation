#!/bin/bash -x

#ARITHMETIC COMPUTATION AND SORTING : USE CASE 7 ->  READ THE VALUES FROM DICTIONARY INTO THE ARRAY.

declare -A arithmeticDictionary;
declare -a arithmeticArray;

counter=1;
arrayCounter=0;

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
	echo "DICTIONARY KEYS : " ${!arithmeticDictionary[@]};
	echo "ELEMENTS IN DICTIONARY : " ${arithmeticDictionary[@]};
}

dictionaryToArray () {
	for (( i=1; i<=$((${#arithmeticDictionary[@]})); i++ ))
	do
		storeInArray ${arithmeticDictionary[$i]};
	done;
}

storeInArray () {
	value=$1;

	arithmeticArray[$arrayCounter]=$value;
	((arrayCounter++));
}

displayArrayElements () {
	echo "ARRAY KEYS : " ${!arithmeticArray[@]};
	echo "ELEMENTS IN ARRAY : " ${arithmeticArray[@]};
}

arithmeticMain () {
	takeUserInput;
	arithmeticCalculation1;
	arithmeticCalculation2;
	arithmeticCalculation3;
	arithmeticCalculation4;
	displayDictionaryElements;
	dictionaryToArray;
	displayArrayElements;
}

arithmeticMain;

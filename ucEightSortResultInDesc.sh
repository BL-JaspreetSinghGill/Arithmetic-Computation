#!/bin/bash -x

#ARITHMETIC COMPUTATION AND SORTING : USE CASE 8 ->  SORT THE RESULT IN DESCENDING ORDER.

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

#THIS METHOD SORTS THE ARRAY BASED ON OPERATION EG: -gt or -lt
sortResult () {
	operation=$1;

	#result=$(echo ${arithmeticArray[*]} | tr " " "\n"| sort $operation);
	#echo "SORTED RESULT " $result;

	for (( i=0; i<${#arithmeticArray[@]}-1; i++ ))
	do
		for (( j=i+1; j<${#arithmeticArray[@]}; j++ ))
		do
			if [ ${arithmeticArray[$i]} $operation ${arithmeticArray[$j]} ]
			then
				temp=${arithmeticArray[$i]};
				arithmeticArray[$i]=${arithmeticArray[$j]};
				arithmeticArray[$j]=$temp;
			fi;
		done;
	done;

	echo "SORTED RESULT : " ${arithmeticArray[@]};
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
	#sortResult -nr;
	sortResult -lt;
}

arithmeticMain;

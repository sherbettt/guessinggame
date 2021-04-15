#!/usr/bin/env bash

echo "[There is guessinggame.sh]"
echo "++++++++"

function question {
	echo "Guess/enter the number of files in the current directory:"
	read answer
    calculate=$(ls -1 | wc -l)
}

question

while [[ $answer -ne $calculate ]]
do
	if [[ $answer -lt $calculate ]] 
	then
		echo "too low"
	else
		echo "too high"
	fi
	question
done

echo "Answer is correct. And the list of files is $answer :"
echo "------------" && ls -1

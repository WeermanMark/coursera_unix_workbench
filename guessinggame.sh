#!/usr/bin/env bash

function display_message {
	if [[ $1 -eq 0 ]]
	then
		echo "Please enter your first guess"
	else
		echo "Incorrect! Please enter a new guess"
	fi
}

echo "How many files (excluding directories) are in the current directory?"

attempt=0
number_of_files="$(ls -p | grep -v "/$" | wc -l)"
guess=""

while [[ "$attempt" -eq 0 || "$guess" -ne "$number_of_files" ]]
do
	echo $(display_message "$attempt")
	
	read guess

	while [[ ! "$guess" =~ ^[0-9]+$ ]]
	do
		echo "Invalid input. Please enter a whole, positive number"
		read guess
	done

	let attempt=attempt+1
done

echo "Congratulations! There are indeed $guess files in the current directory. It took you $attempt guesses."

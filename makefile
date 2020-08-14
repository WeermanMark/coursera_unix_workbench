create_readme: guessinggame.sh
	echo "## Guessing game" > README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

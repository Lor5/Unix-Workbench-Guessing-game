README.md: guessinggame.sh 
	echo "Unix Workbench Guessing Game Project" > README.md 
	echo "guessinggame.sh has $(shell wc -l < guessinggame.sh) lines" >> README.md
	echo -n "\n**Make date**: " >>README.md 
	date >> README.md

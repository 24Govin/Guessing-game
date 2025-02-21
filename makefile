#/usr/bin/env bash

all: README.md

README.md: Guessing-game.sh
	touch README.md
	echo "# Guessing-game" > README.md
	echo $$(date) >> README.md
	echo "  \n" >> README.md
	wc -l Guessing-game.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md

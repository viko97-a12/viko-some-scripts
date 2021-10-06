#!/bin/bash

echo "Enter a filename to read: "
read File

while read -r SUPERHERO; do
	echo "Superhero name: $SUPERHERO"
done < "$File"


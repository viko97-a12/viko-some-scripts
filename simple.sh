#!/bin/bash

echo {1..10}
echo {a..z}

echo "Last program's return value: $?"
echo "Script's PID: $$"
echo "Number of arguments passed to script: $#"
echo "All arguments passed to script: $@"
echo "Script's arguments separated into different variables: $1 $2 ..."


echo "I'm in $(pwd)"
echo "I'm in $PWD"

echo "What's your name?"
read Name
echo Hello, $Name!

if [ $Name != $USER ]
then
	echo "your name isn't your username"
else
	echo "your name is your username"
fi

Email=me@example.com
if [[ "$Email" =~ [a-z]+@[a-z]{2,}\.(com|net|org) ]]
then
	echo "valid email"
fi



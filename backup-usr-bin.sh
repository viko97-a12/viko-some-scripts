#!/bin/bash -u


LOG_FILE=$1
BACKUP_DIR="/home/viktormilev/scripts/backup"
LOC_DIR="/usr/bin/*"

if [ -z $1 ]; then
	echo "You have not passed correctly the word!"
	exit 231
fi

init () {
	if [ -d $BACKUP_DIR ]; then
		echo "The directory already exists!"
		echo "" > $LOG_FILE
		echo "Will delete current files in $BACKUP_DIR $(date +"%D %T")" >> /home/viktormilev/scripts/$LOG_FILE
		echo "Timestamp before work is done $(date +"%D %T")" >> /home/viktormilev/scripts/$LOG_FILE
		rm -rf ./$BACKUP_DIR/*


	else
		echo "" > $LOG_FILE
		echo "Timestamp before work is done $(date +"%D %T")" >> /home/viktormilev/scripts/$LOG_FILE
		echo "Creating backup directory" >> /home/viktormilev/scripts/$LOG_FILE
		mkdir -p /home/viktormilev/scripts/backup

	fi
}

init

echo "Starting to copy files $(date +"%D %T")" >> /home/viktormilev/scripts/$LOG_FILE
cp -v $LOC_DIR $BACKUP_DIR >> /home/viktormilev/scripts/$LOG_FILE
echo "Finished Copying Files" >> /home/viktormilev/scripts/$LOG_FILE
echo "Timestamp after work is done $(date +"%D %T")" >> /home/viktormilev/scripts/$LOG_FILE



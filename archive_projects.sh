#!/bin/bash
#$Revision:001$
#$Sat Jul  5 03:26:40 PM UTC 2025$
#Variables
BASE=/home/kernel_dragon/
DAYS=10
DEPTH=1
RUN=0
#Check if the directory is present or not
if [ ! -d $BASE ] 
then
	echo "Directory does not exist: $BASE"
	exit 1
fi

#Create 'archive' folder if not present
if [ ! -d $BASE/archive ]
then 
	mkdir $BASE/archive
fi
#Find the list of files largest than 20MB
for i in `find $BASE -maxdepth $DEPTH -type f -size +20M`
do
	if [ $RUN -eq 0 ] 
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done

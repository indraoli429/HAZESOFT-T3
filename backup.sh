#!/bin/bash
if [ ! $1 ]; then
    echo "backup directory not provided"
    exit 1
fi
#taking from first arg
DIR=$1
if [ -d "$DIR" ]; then
    timestamp=$(date +%Y%m%d_%H%M%S)
    echo Date: $(date)
    echo "Timespamp: $timestamp"
    cd $DIR
    echo -e "\nWorking in progress....."
    tar -cvf $timestamp.tar $DIR
    echo -e "\nSuccessful: Hello $USER given directory is just archived!"
else
    echo "Backup failed: directory '$DIR' does not exists!"
fi
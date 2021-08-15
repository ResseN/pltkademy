#! /bin/bash

INITIAL_TEXT=$1
FINAL_TEXT=$2
DIR=$3

if [ ! -d "$DIR" ]; then
  echo "Error: ${DIR} not found. Can not continue."
  exit 1
fi

for file in "$DIR"/*
do
if [ -f "$file" ]
then
  sed -i "s/$INITIAL_TEXT/$FINAL_TEXT/g" $file
fi
done

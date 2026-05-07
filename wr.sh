#!/bin/bash
TEXT=$1
FOLDER=$2
COUNT=$3

if [ -z "$TEXT" ] || [ -z "$FOLDER" ] || [ -z "$COUNT" ]; then
  echo "Usage: wr.sh <text> <folder> <number 2-8>"
  exit 1
fi

if [ "$COUNT" -lt 2 ] || [ "$COUNT" -gt 8 ]; then
  echo "Error: number must be between 2 and 8"
  exit 1
fi

if [ -d "$FOLDER" ]; then
  echo "Error: folder '$FOLDER' already exists"
  exit 1
fi

mkdir "$FOLDER"

for i in $(seq 1 $COUNT); do
  echo "$TEXT" > "$FOLDER/file${i}.txt"
done

echo "Created $COUNT files in '$FOLDER'"

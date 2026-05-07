#!/bin/bash
if [ -z "$1" ]; then
  echo "No folder name passed in"
  exit 1
fi
if [ ! -d "$1" ]; then
  echo "Error: folder '$1' does not exist"
  exit 1
fi
ls -la "$1"

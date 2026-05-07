#!/bin/bash
if [ -z "$1" ]; then
  echo "No number passed in"
  exit 1
fi
if [ $(( $1 % 2 )) -eq 0 ]; then
  echo "even"
else
  echo "odd"
fi

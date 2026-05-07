#!/bin/bash
add_three() {
  echo $(( $1 + 3 ))
}
if [ -z "$1" ]; then
  echo "No number passed in"
  exit 1
fi
if ! [[ "$1" =~ ^-?[0-9]+$ ]]; then
  echo "Error: '$1' is not a valid number"
  exit 1
fi
add_three $1

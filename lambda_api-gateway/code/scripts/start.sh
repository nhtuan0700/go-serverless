#!/bin/bash

read -p "Enter directory name: " dirname

if [ -z "$dirname" ]; then
  exit 1
fi

read -p "Enter module name: " mod

if [ -z "$mod" ]; then
    echo "No directory name provided. Deleting directory..."
    cd ..
    rm -rf "$dirname"
    echo "Existing..."
    exit 1
fi

read -p "Enter lambda name: " lambdaname
if [ -z "$mod" ]; then
    echo "No directory name provided. Deleting directory..."
    cd ..
    rm -rf "$dirname"
    echo "Existing..."
    exit 1
fi

if [ $? -ne 0 ]; then
  echo "Error occurred during go mod init. Deleting directory..."
  cd ..
  rm -rf "$dirname"
else
  source create.sh "$dirname" "$mod" "$lambdaname"
fi

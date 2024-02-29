#!/bin/bash

GOARCH=arm64 GOOS=linux go build -o bootstrap main.go
zip myFunction.zip bootstrap
rm -rf bootstrap

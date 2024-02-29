#!/bin/bash

GOARCH=arm64 GOOS=linux go build -o bootstrap main.go
zip ../../terraform/source/list.zip bootstrap
rm -rf bootstrap

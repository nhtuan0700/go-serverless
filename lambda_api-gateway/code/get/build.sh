#!/bin/bash

GOARCH=arm64 GOOS=linux go build -o bootstrap main.go
zip book_get_one.zip bootstrap
rm -rf bootstrap

#!/bin/bash

GOARCH=arm64 GOOS=linux go build -o bootstrap main.go
zip .zip bootstrap
rm -rf bootstrap

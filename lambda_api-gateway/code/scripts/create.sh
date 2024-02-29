#!/bin/bash

cd ../

mkdir "$dirname"

cd "$dirname" || exit

go mod init "$mod"
go work use .

touch main.go


cp ../scripts/templates/Makefile ../scripts/templates/build.sh ./
# Replace content in line 4
sed "3s|.*|LAMBDA_NAME=$lambdaname|" Makefile > tmpfile && mv tmpfile Makefile

# Replace content in line 4
sed -i '' "4s|.*|zip terraform/source/$lambdaname.zip bootstrap|" build.sh

echo "Project successfully initialized."

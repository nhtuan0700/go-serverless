include ../../terraform/Makefile
include .env


build:
	./scripts/build.sh

lambda-update:
	aws lambda update-function-code --function-name $(LAMBDA_NAME) --zip-file fileb://$(LAMBDA_NAME).zip --region ap-northeast-1

lambda-invoke:
	aws lambda invoke --function-name $(LAMBDA_NAME) --region ap-northeast-1 response.json

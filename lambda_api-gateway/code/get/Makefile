include ../../terraform/Makefile
include ../.env

LAMBDA_NAME=book_get_one

build:
	./scripts/build.sh

lambda-create:
	aws lambda create-function --function-name $(LAMBDA_NAME) --zip-file fileb://$(LAMBDA_NAME).zip --runtime provided.al2 \
		--architectures "arm64" --handler main \
		--role arn:aws:iam::$(ACCOUNT_ID):role/lambda_role --region ap-northeast-1

lambda-update:
	aws lambda update-function-code --function-name $(LAMBDA_NAME) --zip-file fileb://$(LAMBDA_NAME).zip --region ap-northeast-1

lambda-invoke:
	aws lambda invoke --function-name $(LAMBDA_NAME) --region ap-northeast-1 response.json

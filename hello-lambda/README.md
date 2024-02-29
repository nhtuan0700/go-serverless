https://viblo.asia/p/serverless-series-golang-bai-1-serverless-va-aws-lambda-gAm5y71XZdb

```sh
./build.sh

# init lambda
aws lambda create-function --function-name hello-lambda --zip-file fileb://myFunction.zip --runtime provided.al2 \
		--architectures "arm64" --handler main \
		--role arn:aws:iam::711135205614:role/lambda_role --region ap-northeast-1

# update lambda
aws lambda update-function-code --function-name hello-lambda --zip-file fileb://myFunction.zip --region ap-northeast-1

# Test lambda
aws lambda invoke --function-name $(LAMBDA_NAME) --region ap-northeast-1 response.json
cat response.json
```

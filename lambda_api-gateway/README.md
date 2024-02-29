### Automatically generate new function
1. cd `code/scripts`
2. Run
```sh
./start.sh
```

### Create lambda function manually
Step by step
1. cd `lambda/code/list/get`
2. create zip file by run:
`./build.sh`
4. create lambda function:
```sh
make lambda-create
```
1. Test lambda function:
```sh
make lambda-invoke
```

### Run by terraform
Step by step
1. cd lambda/code/list
2. create zip file by run:
`./build.sh`
3. cd terraform
4. create lambda function by terraform:
```sh
make terraform-init
make terraform-apply
```
5. update lambda function:
```sh
make aws build
```
6. Test lambda function:
```sh
make aws-invoke
```

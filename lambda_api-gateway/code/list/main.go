package main

import (
	"encoding/json"

	"github.com/aws/aws-lambda-go/lambda"
)

type Book struct {
	Id     int    `json:"id"`
	Name   string `json:"name"`
	Author string `json:"author"`
}

type Response struct {
	StatusCode int    `json:"statusCode"`
	Body       string `json:"body"`
}

func list() (Response, error) {
	books := []Book{
		{Id: 1, Name: "NodeJs", Author: "NodeJs"},
		{Id: 2, Name: "Golang", Author: "Golang"},
	}

	res, _ := json.Marshal(books)
	return Response{
		StatusCode: 200,
		Body: string(res),
	}, nil
}

func main() {
	lambda.Start(list)
}

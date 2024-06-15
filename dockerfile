FROM golang:alpine as build-env

ENV GO111MODULE=on

RUN apk update && apk add bash ca-certificates git gcc g++ libc-dev

RUN mkdir /chat_go_docker_grpc
RUN mkdir -p /chat_go_docker_grpc/proto 

WORKDIR /chat_go_docker_grpc

COPY ./proto/service.pb.go /chat_go_docker_grpc/proto 
COPY ./proto/service_grpc.pb.go /chat_go_docker_grpc/proto 
COPY ./main.go /chat_go_docker_grpc

COPY go.mod .
COPY go.sum .

RUN go mod download

RUN go build -o chat_go_docker_grpc .

CMD ./chat_go_docker_grpc

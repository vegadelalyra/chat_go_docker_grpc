# go_grpc
Utilizing gRPC google's framework for req res paradigm rpc API architecture to send HTTP 2.0 requests on protoc buffer format for high speed multi micro services communication speed.

## The magic command 
To compile the proto buffer compiler for GO
"
 protoc --proto_path=proto --proto_path=thirdparty --go_out=Mservice.proto=myproject/proto:proto --go-grpc_out=Mservice.proto=myproject/proto:proto proto/service.proto
"
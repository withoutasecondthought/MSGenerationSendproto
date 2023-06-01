.DEFAULT_GOAL := gen

rm:
	rm -f ./setmsconfig/MSGenerationSend.pb.go
	rm -f ./setmsconfig/MSGenerationSend_grpc.pb.go

gen:
	protoc --go_out=. --go_opt=paths=import \
	--go-grpc_out=. --go-grpc_opt=paths=import \
proto/MSGenerationSend.proto
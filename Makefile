protoorder:
	rm -f golang/order/*.go
	protoc --proto_path=order --go_out=golang/order --go_opt=paths=source_relative \
	--go-grpc_out=golang/order --go-grpc_opt=paths=source_relative \
	order/*.proto

protopayment:
	rm -f golang/payment/*.go
	protoc --proto_path=payment --go_out=golang/payment --go_opt=paths=source_relative \
	--go-grpc_out=golang/payment --go-grpc_opt=paths=source_relative \
	payment/*.proto


.PHONY: protoorder protopayment

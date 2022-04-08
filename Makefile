grun:
	go run .

gfmt:
	go fmt .

gvet:
	go vet .

gtest:
	go test -v

gbuild:
	go build -o bin

dbuild:
	docker build --tag balintsoos/flipper-service .

drun:
	docker run --rm --detach --publish 8080:8080 --name flipper-service balintsoos/flipper-service

dtest:
	curl localhost:8080/ping

dstop:
	docker stop flipper-service

dps:
	docker ps --all

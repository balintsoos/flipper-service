go-run:
	go run .

go-test:
	go test -v

go-build:
	go build -o bin

docker-build:
	docker build --tag balintsoos/flipper-service .

docker-run:
	docker run balintsoos/flipper-service

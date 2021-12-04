go-run:
	go run main.go

build:
	docker build --tag balintsoos/flipper-service .

run:
	docker run balintsoos/flipper-service

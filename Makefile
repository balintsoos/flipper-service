go-run:
	go run .

build:
	docker build --tag balintsoos/flipper-service .

run:
	docker run balintsoos/flipper-service

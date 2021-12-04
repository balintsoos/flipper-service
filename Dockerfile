### BUILD STAGE ###
FROM golang:1.17.3-alpine3.15 as build

WORKDIR /app/src

COPY . .

RUN go build -o /app/bin

### DISTRIBUTION STAGE ###
FROM gcr.io/distroless/base-debian11

COPY --from=build /app/bin /bin

CMD [ "/bin" ]

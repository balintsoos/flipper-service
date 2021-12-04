package main

import (
	"log"
	"net/http"
)

func main() {
	mux := http.NewServeMux()
	mux.HandleFunc("/", indexHandler)
	mux.HandleFunc("/healthcheck", healthcheckHandler)
	log.Fatal(http.ListenAndServe(":8080", mux))
}

func indexHandler(res http.ResponseWriter, req *http.Request) {
	res.Write([]byte("<h1>Flipper Service</h1>"))
}

func healthcheckHandler(res http.ResponseWriter, req *http.Request) {
	res.Write([]byte("OK"))
}

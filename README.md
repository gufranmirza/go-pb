# go-pb

## Tutorial: https://ednsquare.com/story/working-with-protocol-buffers-in-golang------8g4uuR

## Build Docker Image

```sh
docker build -t gopb .
```

## Run Docker Container

```sh
docker run -it -v `pwd`:/app/ gopb:latest bash
```

## Run main

```sh
root@<id>:/# cd app/
root@<id>:/app# protoc -I=. --go_out=. ./addressbook.proto
root@<id>:/app# go run main.go 
Raw data [10 45 10 8 74 111 104 110 32 68 111 101 16 210 9 26 16 106 100 111 101 64 101 120 97 109 112 108 101 46 99 111 109 34 12 10 8 53 53 53 45 52 51 50 49 16 1 10 42 10 4 65 108 101 120 16 211 9 26 16 97 108 101 120 64 101 120 97 109 112 108 101 46 99 111 109 34 13 10 9 49 50 51 52 45 53 54 55 56 16 1]
===========================
ID:  1234
Name:  John Doe
Email:  jdoe@example.com
Phones:  [number:"555-4321" type:HOME]
===========================
ID:  1235
Name:  Alex
Email:  alex@example.com
Phones:  [number:"1234-5678" type:HOME]
```
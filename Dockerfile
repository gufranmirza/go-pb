FROM golang:1.15.6-buster

ENV GO111MODULE=auto
RUN apt-get update && apt-get -y install libprotobuf-dev protobuf-compiler

# Install grpc
RUN go get -u -v github.com/golang/protobuf/proto
RUN go get -u -v github.com/golang/protobuf/protoc-gen-go
RUN go get -u -v github.com/gufranmirza/go-pb/tutorialpb/addressbookpb


# Install protoc and zip system library
RUN apt-get update && apt-get install -y zip && \
    mkdir /opt/protoc && cd /opt/protoc && wget https://github.com/protocolbuffers/protobuf/releases/download/v3.7.0/protoc-3.7.0-linux-x86_64.zip && \
    unzip protoc-3.7.0-linux-x86_64.zip

ENV PATH=$PATH:$GOPATH/bin:/opt/protoc/bin
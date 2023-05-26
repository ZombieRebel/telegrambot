APP=$(shell basename $(shell git remote get-url origin))
REGISTRY=zombierebel.jfrog.io/docker
VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGET_OS=linux
TARGETARCH=arm64

format: 
	gofmt -s -w ./

lint: 
	golint

test: 
	go test -v

get:
	go get

build: format get
	CGO_ENABLED=0 GOOS=${TARGET_OS} GOARCH=${TARGETARCH} go build -v -o kbot -ldflags "-X="github.com/ZombieRebel/telegrambot/cmd.appVersion=${VERSION}

image:
	docker build . -t ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

push:
	docker push ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

clean: 
	rm -rf kbot
	docker rmi ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

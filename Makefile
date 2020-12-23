.PHONY: build push

build:
	docker pull ubuntu:16.04
	docker build -t "kullo/swiftbuild:latest" .

push:
	docker push kullo/swiftbuild:latest

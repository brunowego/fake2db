SHELL := /bin/sh

DOCKER_REPO := emirozer
DOCKER_IMAGE := fake2db
DOCKER_TAG := $(shell git describe --tags --abbrev=0 2> /dev/null || echo 'latest')

.PHONY: docker/build docker/push

docker/build:
	docker build -t $(DOCKER_REPO)/$(DOCKER_IMAGE):$(DOCKER_TAG) -t $(DOCKER_REPO)/$(DOCKER_IMAGE):latest .

docker/push:
	docker push $(DOCKER_REPO)/$(DOCKER_IMAGE):$(DOCKER_TAG)
	docker push $(DOCKER_REPO)/$(DOCKER_IMAGE):latest

#
# Makefile for dreadlabs/loadbalancer
#
# @see http://www.itnotes.de/docker/development/tools/2014/08/31/speed-up-your-docker-workflow-with-a-makefile/
# @see http://stackoverflow.com/a/10858332
#

VERSION ?= latest
CONTEXT ?= nginx
NS = dreadlabs
FILE = Dockerfile


REPO = loadbalancer
NAME = loadbalancer
INSTANCE = default

.PHONY: build shell release versions start stop rm

build:
	docker build --file $(CONTEXT)/$(FILE) -t $(NS)/$(REPO):$(CONTEXT)-$(VERSION) $(CONTEXT)

push:
	docker push $(NS)/$(REPO):$(CONTEXT)-$(VERSION)

shell:
	docker run --rm --name $(NAME)-$(CONTEXT)-$(INSTANCE) --interactive --tty $(NS)/$(REPO):$(CONTEXT)-$(VERSION) /bin/bash

start:
	docker run -d --name $(NAME)-$(CONTEXT)-$(INSTANCE) $(NS)/$(REPO):$(CONTEXT)-$(VERSION)

stop:
	docker stop $(NAME)-$(CONTEXT)-$(INSTANCE)

rm:
	docker rm $(NAME)-$(CONTEXT)-$(INSTANCE)

release:
	make push -e VERSION=$(VERSION) CONTEXT=$(CONTEXT)

versions:
	docker images | grep $(NS)/$(REPO)

default: build

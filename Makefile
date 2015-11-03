# make setup

ifeq ($(PREFIX),)
  PREFIX := $(shell git rev-parse --show-toplevel)
endif
DOCKER_IMAGE_NAME := "grommet-experimental"
DOCKER_CONTAINER_NAME := grommet-experimental-container
DOCKER_FILE_URL := "file:///$(PREFIX)/Dockerfile"

include mk/dockerfile.mk

DOCKER_FILE := .dockerfile.grommet

build: gen-dockerfile

%:
		docker build -f $(DOCKER_FILE) -t $(DOCKER_IMAGE_NAME) .

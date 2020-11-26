PORT := 3000

all: help

help:
	@echo 'Welcome! This app is for practicing with Heroku'
	@echo ''
	@echo 'The following are common commands:'
	@echo ''
	@echo 'make build       # build a local docker image'
	@echo 'make run         # run a local docker container'

build:
	docker build -t helloku .

run:
	docker run -it --rm --name helloku -e PORT=$(PORT) -p $(PORT):$(PORT) helloku

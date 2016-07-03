all: build

build:
	@docker build --tag=openapphack/nginx .

release: build
	@docker build --tag=openapphack/nginx:$(shell cat VERSION) .

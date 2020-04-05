.PHONY: build

build:
	docker build --pull -t ernestas/ssh:$$(date +%Y%m%d) .
	docker tag ernestas/ssh:$$(date +%Y%m%d) ernestas/ssh:latest
	docker push ernestas/ssh:$$(date +%Y%m%d)
	docker push ernestas/ssh:latest

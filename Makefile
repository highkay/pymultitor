img=pymultitor
tag=latest

build:
	docker build -t highkay/${img}:${tag} .

upload:
	docker push highkay/${img}:${tag}

test:
	docker run -it --rm -p 8080:8080 highkay/${img}:${tag}
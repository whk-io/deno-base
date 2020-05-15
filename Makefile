build:
	docker build -t deno-test .

run:
	docker run -it -p 9001:9001 deno-test
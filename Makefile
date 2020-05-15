build:
	hadolint Dockerfile
	docker build -t deno-test .

run:
	docker run -it -p 9001:9001 deno-test

shell:
	docker run -it --entrypoint /bin/bash deno-test

test:
	deno test --allow-net hello.test
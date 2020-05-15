FROM ubuntu:20.04

ENV DENO_VERSION=1.0.0

RUN apt-get -qq update \
 && apt-get -qq install -y ca-certificates=20190110ubuntu1 curl=7.68.0-1ubuntu2 unzip=6.0-25ubuntu1 --no-install-recommends \
 && curl -fsSL https://github.com/denoland/deno/releases/download/v${DENO_VERSION}/deno-x86_64-unknown-linux-gnu.zip \
         --output deno.zip \
 && unzip deno.zip \
 && rm deno.zip \
 && chmod 777 deno \
 && mv deno /usr/bin/deno \
 && apt-get -qq remove -y ca-certificates curl unzip \
 && apt-get -y -qq autoremove \
 && apt-get -qq clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd --uid 1993 --user-group deno \
 && mkdir /deno-dir/ \
 && chown deno:deno /deno-dir/

ENV DENO_DIR /deno-dir/
COPY hello.ts /deno-dir/
WORKDIR /deno-dir/

ENTRYPOINT ["deno"]
CMD ["run", "--allow-net", "hello.ts"]
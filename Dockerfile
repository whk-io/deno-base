FROM ubuntu:20.04 as base
RUN apt update -y && apt install -y curl unzip
RUN useradd -ms /bin/bash deno
USER deno
WORKDIR /home/deno
ENV DENO_INSTALL="/home/deno/.deno"
ENV PATH="$DENO_INSTALL/bin:$PATH"
RUN curl -fsSL https://deno.land/x/install/install.sh | sh
RUN mkdir /home/deno/app
WORKDIR /home/deno/app
COPY hello.ts /home/deno/app
ENTRYPOINT ["deno", "run", "--allow-net", "hello.ts"]
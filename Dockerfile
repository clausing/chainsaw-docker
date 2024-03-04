
FROM debian:stable-slim
LABEL maintainer "Jim Clausing, jclausing@isc.sans.edu"
LABEL version="chainsaw 2.8.1"
LABEL description="Run chainsaw in a docker container"

RUN apt update && \
    apt install wget unzip -y && \
    apt clean && \
    wget https://github.com/WithSecureLabs/chainsaw/releases/download/v2.8.1/chainsaw_x86_64-unknown-linux-gnu.tar.gz && \
    tar -xzf chainsaw*.tar.gz && \
    rm -v *.tar.gz

COPY ./scripts/* /scripts/

WORKDIR /chainsaw

ENTRYPOINT ["/bin/sh", "/scripts/start.sh"]

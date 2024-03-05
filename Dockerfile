
FROM debian:stable-slim
LABEL maintainer "Jim Clausing, jclausing@isc.sans.edu"
LABEL version="chainsaw 2.8.1 + Sigma r2024-02-26 Core++"
LABEL description="Run chainsaw in a docker container"

RUN apt update && \
    apt install wget unzip -y && \
    apt clean && \
    wget https://github.com/WithSecureLabs/chainsaw/releases/download/v2.8.1/chainsaw_x86_64-unknown-linux-gnu.tar.gz && \
    unzip chainsaw*.tar.gz && \
    wget https://github.com/SigmaHQ/sigma/releases/download/r2024-02-26/sigma_core++.zip && \
    unzip sigma*.zip && \
    mv rules chainsaw/ && \
    rm -v *.tar.gz *.zip

COPY ./scripts/* /scripts/

WORKDIR /chainsaw

ENTRYPOINT ["/bin/sh", "/scripts/start.sh"]

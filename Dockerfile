
FROM debian:stable-slim
LABEL maintainer "Jim Clausing, jclausing@isc.sans.edu"
LABEL version="chainsaw 2.9.1 + Sigma r2024-05-13 Core++"
LABEL description="Run chainsaw in a docker container"

RUN apt update && \
    apt install wget unzip -y && \
    apt clean && \
    wget https://github.com/WithSecureLabs/chainsaw/releases/download/v2.9.1/chainsaw_all_platforms+rules.zip && \
    unzip chainsaw*.zip && \
    wget https://github.com/SigmaHQ/sigma/releases/download/r2024-05-13/sigma_core++.zip && \
    unzip sigma*.zip && \
    rm -rf chainsaw/sigma && \
    mv rules chainsaw/sigma && \
    mv /chainsaw/chainsaw_x86_64-unknown-linux-gnu /chainsaw/chainsaw && \
    chmod a+x /chainsaw/chainsaw && \
    rm -vf *.tar.gz *.zip

COPY ./scripts/* /scripts/

WORKDIR /chainsaw

ENTRYPOINT ["/bin/sh", "/scripts/start.sh"]


FROM debian:bookworm-slim
RUN apt update && \
    apt install wget unzip -y && \
    apt clean && \
    wget https://github.com/WithSecureLabs/chainsaw/releases/download/v2.8.1/chainsaw_x86_64-unknown-linux-gnu.tar.gz && \
    tar -xzf chainsaw*.tar.gz && \
    rm -v *.tar.gz

COPY ./scripts/* /scripts/

WORKDIR /chainsaw

CMD ["/bin/sh", "/scripts/start.sh"]

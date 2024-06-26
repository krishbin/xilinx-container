FROM docker.io/library/ubuntu:20.04

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A a toolbox to run xilinx software" \
      maintainer="krishbinp@outlook.com"

COPY extra-packages /

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
        $(cat extra-packages | xargs) && \
    rm -rd /var/lib/apt/lists/*

RUN rm /extra-packages

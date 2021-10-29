FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update ?
 && apt-get full-update \
 && apt-get -y install \
     libguestfs-tools \
     linux-image-generic \
     make \
     bash-completion \
 && apt-get clean

WORKDIR /build
ENTRYPOINT [ "/bin/bash", "-l" ]

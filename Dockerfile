FROM lsiobase/mono:xenial
LABEL maintainer="Jimmy Zelinskie <jimmyzelinskie@gmail.com>"

ARG DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && apt-get install -y software-properties-common python-software-properties
RUN apt-add-repository ppa:mumble/release
RUN apt-get update
RUN apt-get install -y mumble-server=1.2.19-1~ppa4~xenial1

COPY root/ /
EXPOSE 64738
VOLUME /data
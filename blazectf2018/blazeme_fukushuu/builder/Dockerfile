FROM ubuntu:17.04

RUN cp /etc/apt/sources.list /etc/apt/sources.list.org \
    && sed -i -e 's/archive.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y build-essential vim file

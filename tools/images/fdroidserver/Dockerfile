FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN test -d /usr/share/man/man1 || mkdir -p /usr/share/man/man1

RUN apt update && \
    apt install -y wget fdroidserver rclone socat nano

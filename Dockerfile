FROM ubuntu:focal

RUN mkdir /sisec

WORKDIR /sisec

RUN apt update && apt install -y python3 git
RUN git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev

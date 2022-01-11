FROM ubuntu:focal

ENV TARGET "localhost"
ENV SQLMAP_CRAWL 3
ENV SQLMAP_RISK 1
ENV SQLMAP_LEVEL 1
ENV SQLMAP_COOKIE ""

ENV ALLOWED_PORTS []

RUN apt update && apt install -y python3 git nmap

RUN mkdir /sisec /reports

WORKDIR /sisec

RUN git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
ADD start.sh /sisec/start.sh
RUN chmod +x /sisec/start.sh

ADD scripts /scripts

CMD [ "/sisec/start.sh" ]


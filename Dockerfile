FROM debian:8

MAINTAINER Ondrej Sika <ondrej@ondrejsika.com>

RUN apt-get update && apt-get install -y libtool libboost1.55 libdb5.3 libdb5.3++ libminiupnpc10

COPY namecoind /usr/bin/
COPY namecoin-cli /usr/bin/

RUN mkdir /root/.namecoin && \
    mkdir /root/.namecoin-2

COPY namecoin1.conf /root/.namecoin/namecoin.conf
COPY namecoin2.conf /root/.namecoin-2/namecoin.conf

EXPOSE 28336
EXPOSE 28334

ENTRYPOINT bash -c "namecoind & sleep 5 && namecoin-cli setgenerate true 1 & namecoind -datadir=/root/.namecoin-2"


FROM hex0cter/alpine-browsers:latest
LABEL maintainer="Daniel Han <hex0cter@gmail.com>"

RUN apk update \
  && apk add yarn docker-cli python2 g++ make linux-headers\
  && rm -rf /var/cache/apk/*

ARG NODEJS=v12.8.0

RUN wget -q -O /tmp/nodejs.tgz https://nodejs.org/dist/${NODEJS}/node-${NODEJS}.tar.gz \
  && tar zxvf /tmp/nodejs.tgz -C /tmp \
  && cd /tmp/node-* \
  && ./configure \
  && make \
  && make install

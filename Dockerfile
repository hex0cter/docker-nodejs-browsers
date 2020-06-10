FROM hex0cter/alpine-browsers:latest
LABEL maintainer="Daniel Han <hex0cter@gmail.com>"

RUN apk update \
  && apk add yarn docker-cli libstdc++ \
  && rm -rf /var/cache/apk/*

ARG NODEJS=12.8.0
RUN wget -q -O /tmp/nodejs.tar.xz https://nodejs.org/dist/v${NODEJS}/node-v${NODEJS}-linux-x64.tar.xz \
  && tar xf /tmp/nodejs.tar.xz -C /tmp \
  && cd /tmp/node-* \
  && cp -r * /usr/local

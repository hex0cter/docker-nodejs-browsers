FROM hex0cter/alpine-browsers:latest
LABEL maintainer="Daniel Han <hex0cter@gmail.com>"

RUN apk update \
  && apk add yarn docker-cli  \
  && rm -rf /var/cache/apk/*

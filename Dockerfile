ARG NODEJS=12.8.0
FROM node:${NODEJS}-alpine AS nodejs

FROM hex0cter/alpine-browsers:latest
LABEL maintainer="Daniel Han <hex0cter@gmail.com>"

RUN apk update \
  && apk add docker-cli libstdc++ \
  && rm -rf /var/cache/apk/*

COPY --from=nodejs /opt/ /opt
COPY --from=nodejs /usr/local/bin /usr/local/bin
COPY --from=nodejs /usr/local/include /usr/local/include
COPY --from=nodejs /usr/local/lib /usr/local/lib
COPY --from=nodejs /usr/local/share /usr/local/share

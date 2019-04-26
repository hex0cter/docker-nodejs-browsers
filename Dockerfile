ARG NODEJS=12.8.0
FROM node:${NODEJS} AS nodejs

FROM hex0cter/alpine-browsers:latest
LABEL maintainer="Daniel Han <hex0cter@gmail.com>"

RUN apk update \
  && apk add yarn docker-cli python2 g++ make linux-headers \
  && rm -rf /var/cache/apk/*

COPY --from=nodejs /usr/local/bin/node /usr/local/bin/node
COPY --from=nodejs /usr/local/bin/nodejs /usr/local/bin/nodejs
COPY --from=nodejs /usr/local/bin/npm /usr/local/bin/npm
COPY --from=nodejs /usr/local/bin/npx /usr/local/bin/npx
COPY --from=nodejs /usr/local/bin/yarn /usr/local/bin/yarn
COPY --from=nodejs /usr/local/bin/yarnpkg /usr/local/bin/yarnpkg
COPY --from=nodejs /usr/local/lib/node_modules /usr/local/lib/node_modules
COPY --from=nodejs /opt/ /opt/

# RUN wget -q -O /tmp/nodejs.tar.xz https://nodejs.org/dist/${NODEJS}/node-${NODEJS}-linux-x64.tar.xz \
#   && tar xf /tmp/nodejs.tar.xz -C /tmp \
#   && cd /tmp/node-* \
#   && cp -r * /usr/local

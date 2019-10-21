
## Docker image for nodejs with Chromium and Firefox
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hex0cter/nodejs-browsers/latest)](https://hub.docker.com/r/hex0cter/nodejs-browsers)
[![Build Status](https://travis-ci.org/hex0cter/docker-nodejs-browsers.svg?branch=master)](https://travis-ci.org/hex0cter/docker-nodejs-browsers)
[![Docker Pulls](https://img.shields.io/docker/pulls/hex0cter/nodejs-browsers)](https://hub.docker.com/r/hex0cter/nodejs-browsers)

This image allows you to run the web browser inside a docker container.

## What is included?
* alpine with X server
* firefox
* chromium
* nodejs
* yarn
* docker-cli

## Supported nodejs versions:
* 10.x.x
* 11.x.x
* 12.x.x
* 13.x.x
* 14.x.x

(Note ***".x.x"*** above stands for the latest minor version)

## Pull the image
```bash
docker pull hex0cter/nodejs-browsers:latest
```
Please visit [docker hub](https://hub.docker.com/repository/docker/hex0cter/nodejs-browsers) for more details.

## Start a container
```bash
docker run -it --rm hex0cter/nodejs-browsers firefox
docker run -it --rm hex0cter/nodejs-browsers chrome --no-sandbox
```

## Debug mode
```bash
docker run -it --rm -e DEBUG=true -p 5900:5900 hex0cter/nodejs-browsers firefox
docker run -it --rm -e DEBUG=true -p 5900:5900 hex0cter/nodejs-browsers chrome --no-sandbox
```
When **DEBUG=true**, the VNC server will be started, so you can access the container's GUI from any VNC viewer (port 5900).

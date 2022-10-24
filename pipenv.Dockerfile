FROM --platform=linux/amd64 python:3.8

LABEL maintainer="Artyom Aristov"
LABEL version="1.0.0"
LABEL org.opencontainers.image.source=https://github.com/obsequey/docker-images
LABEL org.opencontainers.image.licenses=MIT
LABEL org.opencontainers.image.description="Prebuilt image with pipenv-ready environment"

RUN apt-get update \
  && apt-get install -y libsasl2-dev python3-dev libldap2-dev libssl-dev \
  && pip install pipenv \
  && pipenv install

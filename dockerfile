FROM rust:1-jessie

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends kcov

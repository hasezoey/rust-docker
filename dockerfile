FROM rust:1-stretch

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends kcov

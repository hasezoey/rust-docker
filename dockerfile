FROM rust:1-stretch

RUN apt-get update -y \
    && apt-get upgrade -y

RUN wget https://github.com/SimonKagstrom/kcov/archive/master.tar.gz && \
    tar xzf master.tar.gz && \
    cd kcov-master && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make && \
    make install && \
    cd ../.. && \
    rm -rf kcov-master

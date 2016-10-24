FROM rudenkovk/ubuntu-docker:latest
MAINTAINER Konstantin Rudenkov <rudenkovk@gmail.com>

RUN apt-get update \
    && apt-get install nginx-extras luarocks -y \
    && luarocks install nginx-metrix \
    && apt-get purge autotools-dev binutils build-essential cpp cpp-5 dpkg-dev fakeroot g++ g++-5 gcc gcc-5 libc6-dev \
    libltdl-dev liblua5.1-0-dev libreadline-dev libreadline6-dev libstdc++-5-dev libtinfo-dev libtool libtool-bin linux-libc-dev \
    && apt-get autoremove -yq \
    && apt-get clean \
    && apt-get autoclean -yq \
    && rm -rf /tmp/* /var/tmp/* /var/lib/apt/archive/* /var/lib/apt/lists/*
    

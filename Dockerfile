FROM rudenkovk/ubuntu-docker:latest
MAINTAINER Konstantin Rudenkov <rudenkovk@gmail.com>

RUN apt-get update \
    && apt-get install nginx-extras luarocks -y \
    && luarocks install nginx-metrix \
    && apt-get autoremove -yq \
    && apt-get clean \
    && apt-get autoclean -yq \
    && rm -rf /tmp/* /var/tmp/* /var/lib/apt/archive/* /var/lib/apt/lists/*
    

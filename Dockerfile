FROM ubuntu:14.04
MAINTAINER Derren Desouza <derrend@yahoo.co.uk>

COPY decodescript.py /

RUN apt-get update -y \
    && apt-get install python m2crypto -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["python","decodescript.py"]

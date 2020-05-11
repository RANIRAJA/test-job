### Download the base image ###
FROM ubuntu:18.04

MAINTAINER B@Kul Gupt@ (bakulgupta11@gmail.com,github.com/BullHacks)

### Includes the installation of python,pip and pipenv required for backend
RUN apt-get -y update && \
    apt-get install -y python3.6 \
    python3-pip \
    libmysqlclient-dev && \
    pip3 install pipenv

### Creation of soft link ###
RUN ln -s python3.6 /usr/bin/python 
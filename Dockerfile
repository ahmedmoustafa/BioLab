FROM ubuntu:18.04

LABEL description="Bioinformatics Docker Container"
LABEL maintainer="amoustafa@aucegypt.edu"

RUN mkdir /tmp/setup/

WORKDIR /tmp/setup/

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get update ; apt-get -y upgrade
RUN apt-get -y install git

##########################################################################################
##########################################################################################

RUN mkdir /tmp/setup
WORKDIR /tmp/setup

RUN git clone https://github.com/ahmedmoustafa/BioLab
RUN sh /tmp/setup/BioLab/prerequisites.sh


##########################################################################################
##########################################################################################

WORKDIR /root/


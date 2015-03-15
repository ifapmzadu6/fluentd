FROM ubuntu:latest

RUN sudo apt-add-repository 'deb http://packages.treasure-data.com/debian/ lucid contrib'd
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl git td-agent




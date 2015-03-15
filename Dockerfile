FROM ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl git

# Fluentd
RUN curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh
ADD Resource/td-agnet.conf /etc/td-agent/td-agnet.conf
RUN /etc/init.d/td-agent start




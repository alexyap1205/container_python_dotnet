FROM ubuntu:20.04

RUN apt-get update \
  && apt-get install -y apt-utils \
  && apt-get update \
  && DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get update \
  && apt-get install -y python2.7

RUN apt-get update \
  && apt-get install -y python3.8 python3-pip python3.8-dev \
  && pip3 install --upgrade pip

RUN apt-get install -y software-properties-common \
  && apt-get update \
  && apt-get install -y wget \
  && apt-get update

RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
  && dpkg -i packages-microsoft-prod.deb \
  && apt-get install -y apt-transport-https \
  && apt-get update \
  && apt-get install -y dotnet-sdk-3.1

FROM ubuntu:18.04

RUN apt-get update \
  && apt-get install -y python2.7

RUN apt-get update \
  && apt-get install -y python3.7 python3-pip python3.7-dev \
  && pip3 install --upgrade pip

RUN apt-get install -y software-properties-common \
  && apt-get update \
  && apt-get install -y wget \
  && apt-get update

RUN wget https://packages.microsoft.com/config/ubuntu/19.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
  && dpkg -i packages-microsoft-prod.deb \
  && add-apt-repository universe \
  && apt-get update \
  && apt-get install -y apt-transport-https \
  && apt-get update \
  && apt-get install -y dotnet-sdk-2.1

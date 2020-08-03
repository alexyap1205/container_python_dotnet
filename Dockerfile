FROM mcr.microsoft.com/dotnet/core/sdk:2.1.808-focal

RUN apt-get update \
  && apt-get install -y python2.7

RUN apt-get update \
  && apt-get install -y python3.8 python3-pip python3.8-dev \
  && pip3 install --upgrade pip

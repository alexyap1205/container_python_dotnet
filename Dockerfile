FROM ubuntu:18.04

RUN apt-get update \
  && apt-get install -y python2.7

RUN apt-get update \
  && apt-get install -y python3.8 python3-pip python3.8-dev \
  && pip3 install --upgrade pip

RUN apt-get install -y software-properties-common \
  && apt-get update \
  && apt-get install -y wget \
  && apt-get update

RUN apt-get install -y libc6 libgcc1 libgssapi-krb5-2 libicu60 libssl1.1 libstdc++6 zlib1g

RUN wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
  && dpkg -i packages-microsoft-prod.deb \
  && add-apt-repository universe \
  && apt-get update \
  && apt-get install -y apt-transport-https \
  && apt-get update \
  && apt-get install -y dotnet-sdk-2.1

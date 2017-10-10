FROM ubuntu:16.04

LABEL maintainer="dlemphers@gmail.com"

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install curl \
    libgtk2.0-0 \
    libnotify-bin \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    build-essential \
    python2.7 -y

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs mesa-utils

# This ensures your fonts look nice when running inside the container
COPY local.conf /etc/fonts/local.conf

RUN npm install electron -g

RUN npm install -g create-react-app

RUN npm install -g forever

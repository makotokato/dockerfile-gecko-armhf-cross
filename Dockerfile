FROM ubuntu:15.04
MAINTAINER Makoto Kato <m_kato@ga2.so-net.ne.jp>

ADD sources.list /etc/apt/
RUN mkdir /mozilla
ADD mozconfig.sample /mozilla/
RUN dpkg --add-architecture armhf
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y \
  autoconf2.13 \
  build-essential \
  ccache \
  g++ \
  g++-arm-linux-gnueabihf \
  mercurial \
  python \
  unzip \
  zip

RUN apt-get install -y --no-install-recommends \
  libasound2-dev:armhf \
  libdbus-glib-1-dev:armhf \
  libgconf2-dev:armhf \
  libpulse-dev:armhf \
  libxt-dev:armhf \
  libgstreamer-plugins-base0.10-dev:armhf \
  libgtk2.0-dev:armhf \
  libgtk-3-dev:armhf \
  mesa-common-dev:armhf

RUN apt-get clean

ENV SHELL=/bin/bash

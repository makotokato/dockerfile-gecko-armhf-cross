FROM wontfix/gecko-cross-dev
MAINTAINER Makoto Kato <m_kato@ga2.so-net.ne.jp>

RUN dpkg --add-architecture armhf
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
  g++-arm-linux-gnueabihf \
  libasound2-dev:armhf \
  libdbus-glib-1-dev:armhf \
  libgconf2-dev:armhf \
  libpulse-dev:armhf \
  libxt-dev:armhf \
  libgtk2.0-dev:armhf \
  libgtk-3-dev:armhf \
  mesa-common-dev:armhf && \
   apt-get clean

RUN /root/.cargo/bin/rustup target add armv7-unknown-linux-gnueabihf && \
    /root/.cargo/bin/rustup update

#RUN adduser --ingroup users --disabled-password  --gecos '' builder

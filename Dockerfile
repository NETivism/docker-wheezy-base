FROM debian:wheezy
MAINTAINER Jimmy Huang <jimmy@netivism.com.tw>

### locales
ENV LANG en_US.UTF-8
ENV LC_CTYPE zh_TW.UTF-8

RUN \
  apt-get update -qq && \
  apt-get install -qqy locales && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  sed -e 's|^# en_US.UTF-8|en_US.UTF-8|g' -i /etc/locale.gen && \
  sed -e 's|^# zh_TW.UTF-8|zh_TW.UTF-8|g' -i /etc/locale.gen && \
  locale-gen

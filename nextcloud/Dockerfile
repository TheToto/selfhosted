FROM linuxserver/nextcloud:latest

RUN apk add php7-dev alpine-sdk autoconf automake libtool gcc g++ make libffi-dev openssl-dev bzip2-dev

RUN apk add -X http://dl-cdn.alpinelinux.org/alpine/edge/testing dlib

RUN wget https://github.com/goodspb/pdlib/archive/master.zip \
  && mkdir -p /usr/src/php/ext/ \
  && unzip -d /usr/src/php/ext/ master.zip \
  && rm master.zip
RUN cd /usr/src/php/ext/pdlib-master \
  && phpize && ./configure && make && make install
RUN echo "[pdlib]" >> /etc/php7/php.ini \
  && echo 'extension="pdlib.so"' >> /etc/php7/php.ini
RUN sed -i 's/memory_limit=.*/memory_limit=2048M/' /etc/php7/php.ini

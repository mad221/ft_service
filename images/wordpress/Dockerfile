from alpine

COPY default.conf ./
COPY setup.sh ./
RUN apk update && apk upgrade
RUN apk add nginx
RUN apk add openrc
RUN apk add php7 php7-fpm php7-opcache
RUN apk add php7-gd php7-mysqli php7-zlib php7-curl
CMD "./setup.sh"

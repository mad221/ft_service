FROM alpine

COPY default.conf ./
COPY setup.sh ./
COPY config.inc.php ./

RUN apk update && apk upgrade
RUN apk add nginx
RUN apk add --no-cache apache2
RUN apk add openrc
RUN apk add php7 php7-fpm php7-opcache
RUN apk add php7-gd php7-mysqli php7-zlib php7-curl
RUN rc-update add php-fpm7 default
RUN rc-update add nginx default

EXPOSE 5000
CMD "./setup.sh"

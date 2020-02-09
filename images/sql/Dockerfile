FROM alpine:latest

COPY wordpress.sql ./
COPY wp-config.php ./
COPY ip_file ./
COPY default.conf ./
COPY setup.sh ./
COPY mariadb-server.cnf ./
RUN apk update && apk upgrade
RUN apk add nginx
RUN apk add openrc
RUN apk add php7-gd php7-mysqli php7-zlib php7-curl

RUN apk update &&\
	apk add mysql mysql-client && \
	addgroup mysql mysql && \
	mkdir /scripts && \
	rm -rf /var/cache/apk/*

EXPOSE 3306
ENTRYPOINT "./setup.sh"

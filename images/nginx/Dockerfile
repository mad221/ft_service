from alpine
COPY sshd_config ./
COPY setup.sh ./
RUN apk add --no-cache nginx
RUN apk add openrc --no-cache
RUN apk add openssh
EXPOSE 80
EXPOSE 443
EXPOSE 26
COPY default.conf ./
CMD [ "./setup.sh" ]

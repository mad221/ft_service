from alpine
COPY setup.sh ./
RUN apk add --no-cache nginx
RUN apk add openrc --no-cache
EXPOSE 80
EXPOSE 443
COPY default.conf ./
ENTRYPOINT [ "./setup.sh" ]

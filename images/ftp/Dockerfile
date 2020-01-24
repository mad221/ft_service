from alpine:3.8
COPY setup.sh ./
COPY ip_file ./
COPY vsftpd.conf ./
COPY vsftpdServerkey.pem ./
COPY vsftpdCertificate.pem ./
RUN apk add openrc --no-cache
RUN apk add --no-cache vsftpd
VOLUME [ “/sys/fs/cgroup” ]
EXPOSE 20 21
ENTRYPOINT [ "./setup.sh" ]

FROM alpine:3.13
RUN apk --no-cache add vsftpd openssl

COPY start_vsftpd.sh /bin/start_vsftpd.sh
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE 20 21 443 48600-48697
VOLUME /ftp/ftp

ENTRYPOINT ["/bin/start_vsftpd.sh"]


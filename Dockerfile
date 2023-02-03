FROM registry.redhat.io/ubi7/ubi
RUN yum install -y ntp \
    && yum install -y vsftpd
    && systemctl enable vsftpd.service
WORKDIR /tmp/share
EXPOSE 22
ENTRYPOINT ["ls"]

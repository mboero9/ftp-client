FROM alpine
RUN apk add --update --no-cache openssh sshpass
WORKDIR /tmp/share
EXPOSE 22
ENTRYPOINT ["sftp"]

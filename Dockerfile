FROM alpine
RUN apk add --update --no-cache openssh sshpass
COPY ./start.sh /usr/bin/
WORKDIR /tmp/share
EXPOSE 22
ENTRYPOINT ["/usr/bin/start.sh"]

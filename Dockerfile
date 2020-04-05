FROM alpine:latest
RUN apk update && \
    apk add openssh bash git
CMD /usr/sbin/sshd -D

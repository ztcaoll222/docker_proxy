FROM alpine:3.15.5
ARG authorized_keys
RUN apk update
RUN apk add --no-cache openssh
RUN chmod +x entry.sh
ENTRYPOINT ["/entry.sh"]
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config"]

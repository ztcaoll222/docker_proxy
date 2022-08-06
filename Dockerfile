FROM alpine:3.15.5
ARG authorized_keys
RUN apk update
RUN apk add --no-cache openssh
RUN echo ${authorized_keys} >> /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config"]

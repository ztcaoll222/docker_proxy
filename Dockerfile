FROM alpine:3.15.5
ARG authorized_keys
EXPOSE 22

RUN echo "https://mirrors.cloud.tencent.com/alpine/latest-stable/main/" > /etc/apk/repositories
RUN echo "https://mirrors.cloud.tencent.com/alpine/latest-stable/community/" >> /etc/apk/repositories
RUN apk add --no-cache bash openssh

COPY entry.sh /entry.sh
RUN ["chmod", "+x", "/entry.sh"]
ENTRYPOINT ["/entry.sh"]

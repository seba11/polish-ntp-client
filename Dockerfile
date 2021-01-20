FROM alpine:latest
MAINTAINER Seba <s3ba11@users.noreply.github.com>
RUN apk --no-cache add openntpd && mkdir /etc/ntpd
COPY ntpd.conf /etc/ntpd/
EXPOSE 123/udp
CMD ["ntpd", "-f/etc/ntpd/ntpd.conf", "-s", "-d"]

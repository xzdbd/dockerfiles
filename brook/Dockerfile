#
# Dockerfile for brook
#

FROM alpine
LABEL MAINTAINER="xzdbd <xzdbd@sina.com>"

ENV BROOK_URL https://github.com/txthinking/brook/releases/download/v20200901/brook_linux_amd64
ENV ARGS "server -l :6060 -p password"

ADD $BROOK_URL /opt/brook
RUN chmod +x /opt/brook
EXPOSE 6060/tcp 6060/udp

CMD /opt/brook $ARGS
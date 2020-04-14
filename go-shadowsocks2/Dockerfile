#
# Dockerfile for go-shadowsocks2
#

FROM alpine
LABEL MAINTAINER="xzdbd <xzdbd@sina.com>"

ENV SHADOWSOCKS2_URL https://github.com/shadowsocks/go-shadowsocks2/releases/download/v0.1.0/shadowsocks2-linux.gz
ENV ARGS ""

WORKDIR /opt
ADD $SHADOWSOCKS2_URL /opt/shadowsocks2.gz
RUN gzip -d /opt/shadowsocks2.gz && chmod +x /opt/shadowsocks2

CMD /opt/shadowsocks2 $ARGS
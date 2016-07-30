#
# Dockerfile for shadowsocks-go
#

FROM alpine
MAINTAINER xzdbd <xzdbd@sina.com>

ENV SS_VER 1.1.5
ENV SS_URL https://github.com/shadowsocks/shadowsocks-go/releases/download/1.1.5/shadowsocks-server-linux64-$SS_VER.gz
ENV SS_DIR shadowsocks-go-$SS_VER

COPY ./config.json /opt/$SS_DIR/ss-config.json

ADD $SS_URL /opt/$SS_DIR/shadowsocks-server.gz

WORKDIR /opt/$SS_DIR

RUN gzip -d /opt/$SS_DIR/shadowsocks-server.gz && chmod +x /opt/$SS_DIR/shadowsocks-server

EXPOSE 8388

CMD /opt/$SS_DIR/shadowsocks-server -c /opt/$SS_DIR/ss-config.json
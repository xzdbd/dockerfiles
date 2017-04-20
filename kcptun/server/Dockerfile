FROM golang:alpine

MAINTAINER xzdbd <xzdbd@sina.com>

ENV LISTEN_PORT :29900
ENV TARGET_ADDR 127.0.0.1:12948
ENV CRYPT aes
ENV MODE fast
ENV MTU 1350
ENV SNDWND 1024
ENV RCVWND 1024
ENV DATASHARD 10
ENV PARITYSHARD 3

RUN apk update && \
    apk upgrade && \
    apk add git

RUN go get -ldflags "-X main.VERSION=$(date -u +%Y%m%d) -s -w" github.com/xtaci/kcptun/server

EXPOSE $LISTEN_PORT/udp

CMD /go/bin/server -l $LISTEN_PORT -t $TARGET_ADDR --crypt $CRYPT --mode $MODE --mtu $MTU --sndwnd $SNDWND --rcvwnd $RCVWND --datashard $DATASHARD -- partiyshard $PARITYSHARD
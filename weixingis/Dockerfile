FROM xzdbd/golang:alpine

MAINTAINER xzdbd <xzdbd@sina.com>

RUN set -ex \
		apk update && apk upgrade && \
    	apk add --no-cache bash git openssh \
		&& go get -u github.com/astaxie/beego \
		&& go get -u github.com/xzdbd/weixingis

EXPOSE 8092

WORKDIR $GOPATH/bin

CMD $GOPATH/bin/weixingis
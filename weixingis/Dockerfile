FROM xzdbd/golang:alpine

RUN set -ex \
		&& go get -u github.com/astaxie/beego \
		&& go get -u github.com/xzdbd/weixingis

EXPOSE 8092

WORKDIR $GOPATH/bin

CMD $GOPATH/bin/weixingis
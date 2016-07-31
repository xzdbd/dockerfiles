FROM golang:1.6.3

MAINTAINER xzdbd <xzdbd@sina.com>

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
	&& rvm install 1.9.3 \
	&& apt-get update && apt-get install nodejs && apt-get install npm

RUN set -ex \
		apk update && apk upgrade && \
    	apk add --no-cache bash git openssh \
		&& go get -u github.com/astaxie/beego \
		&& go get -u github.com/xzdbd/blog \
		&& cd /go/src/github.com/xzdbd/blog/views/octopress \
		&& gem install bundler && bundle install && rake generate

RUN cp -rf /go/src/github.com/xzdbd/blog/conf /go/bin/ \
	&& cp -rf /go/src/github.com/xzdbd/blog/static /go/bin/ \
	&& mkdir /go/bin/views/octopress \
	&& cp -rf /go/src/github.com/xzdbd/blog/views/octopress/public /go/bin/views/octopress \
	&& cp -rf /go/src/github.com/xzdbd/blog/views/resume.tpl /go/bin/views/

EXPOSE 8096

WORKDIR /go/bin

CMD /go/bin/blog
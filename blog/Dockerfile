FROM golang:1.6.3

MAINTAINER xzdbd <xzdbd@sina.com>

RUN curl -sSL https://get.rvm.io | bash -s stable --ruby \
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
FROM xzdbd/nginx

MAINTAINER xzdbd <xzdbd@sina.com>

RUN set -ex \
	&& wget -O -  https://get.acme.sh | sh \
	&& /root/.acme.sh/acme.sh --renew -d xzdbd.com

COPY ./nginx.conf /usr/local/nginx/conf/nginx.conf

RUN service nginx reload \
	&& service nginx start

EXPOSE 80

CMD ["/bin/bash"]	
	 
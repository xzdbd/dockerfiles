FROM xzdbd/nginx

MAINTAINER xzdbd <xzdbd@sina.com>

RUN set -ex \
	&& wget -O -  https://get.acme.sh | sh

COPY ./nginx.conf /root/nginx.conf
COPY ./post_deploy_1.sh /root/post_deploy_1.sh
COPY ./post_deploy_2.sh /root/post_deploy_2.sh

EXPOSE 80

CMD /usr/local/nginx/sbin/nginx -g 'daemon off;'
	 
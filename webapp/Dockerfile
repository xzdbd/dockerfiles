FROM xzdbd/nginx

MAINTAINER xzdbd <xzdbd@sina.com>

RUN set -ex \
	&& wget -O -  https://get.acme.sh | sh

COPY ./nginx.conf /usr/local/nginx/conf/nginx.conf
COPY ./post_deploy_1.sh /usr/local/nginx/conf/post_deploy_1.sh
COPY ./post_deploy_2.sh /usr/local/nginx/conf/post_deploy_2.sh

EXPOSE 80

CMD ["/bin/bash"]	
	 
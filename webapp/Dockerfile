FROM xzdbd/nginx

MAINTAINER xzdbd <xzdbd@sina.com>

RUN set -ex \
	&& wget -O -  https://get.acme.sh | sh \
	&& export CF_Key="5634c4e7a9a08a12ad49db9e6758a69d3386b" \
	&& export CF_Email="xzdbd@sina.com" \
	&& /root/.acme.sh/acme.sh --issue  --dnssleep 300 --dns dns_cf -d xzdbd.com -d www.xzdbd.com

RUN cd /root/.acme.sh/xzdbd.com \
	&& openssl dhparam -out dhparams.pem 2048 \
	&& wget -O - https://letsencrypt.org/certs/lets-encrypt-x3-cross-signed.pem > intermediate.pem \
	&& cat xzdbd.com.cer intermediate.pem > chained.pem

COPY ./nginx.conf /usr/local/nginx/conf/nginx.conf

EXPOSE 80

CMD /usr/local/nginx/sbin/nginx -g 'daemon off;'
	 
FROM xzdbd/nginx

MAINTAINER xzdbd <xzdbd@sina.com>

ENV CF_Key	"apikey"
ENV CF_Email "xzdbd@sina.com"

RUN set -ex \
	&& wget -O -  https://get.acme.sh | sh \	
	&& /root/.acme.sh/acme.sh --issue --dns dns_cf -d xzdbd.com -d www.xzdbd.com \
	&& cd /root/.acme.sh/xzdbd.com \
	&& openssl dhparam -out dhparams.pem 2048 \
	&& wget -O - https://letsencrypt.org/certs/lets-encrypt-x3-cross-signed.pem > intermediate.pem \
	&& cat xzdbd.com.cer intermediate.pem > chained.pem

COPY ./nginx.conf /usr/local/nginx/conf/nginx.conf

EXPOSE 80

CMD /usr/local/nginx/sbin/nginx -g 'daemon off;'
	 
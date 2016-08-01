#! /bin/bash

/root/.acme.sh/acme.sh --renew -d xzdbd.com \
	&& openssl dhparam -out dhparams.pem 2048 \
	&& wget -O - https://letsencrypt.org/certs/lets-encrypt-x3-cross-signed.pem > intermediate.pem \
	&& cat xzdbd.com.cer intermediate.pem > chained.pem

service nginx reload \
	&& service nginx start	
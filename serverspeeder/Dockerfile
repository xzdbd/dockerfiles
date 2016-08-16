#
# Dockerfile for serverspeeder
#

FROM utuntu:trusty
MAINTAINER xzdbd <xzdbd@sina.com>

RUN set -ex &&\
	apt-get update && \
	apt-get install -y wget &&\
	wget -N --no-check-certificate https://raw.githubusercontent.com/91yun/serverspeeder/master/serverspeeder-all.sh && bash serverspeeder-all.sh &&\
	/serverspeeder/bin/serverSpeeder.sh start

CMD ["/bin/bash"]

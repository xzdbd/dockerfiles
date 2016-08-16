#
# Dockerfile for serverspeeder
#

FROM centos:6
MAINTAINER xzdbd <xzdbd@sina.com>

RUN yum install -y wget \
	&& wget -N --no-check-certificate https://raw.githubusercontent.com/91yun/serverspeeder/master/serverspeeder-all.sh && bash serverspeeder-all.sh \
	&& /serverspeeder/bin/serverSpeeder.sh start

CMD ["/bin/bash"]

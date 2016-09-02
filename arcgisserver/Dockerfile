FROM centos:6

MAINTAINER xzdbd <xzdbd@sina.com>

COPY ./* /tmp/

RUN yum install -y net tools && \
    yum install -y net fontconfig && \
    yum install -y net freetype && \
    yum install -y net gettext && \
    yum install -y net libXfont && \
    yum install -y net mesa-libGL && \
    yum install -y net mesa-libGLU && \
    yum install -y net Xvfb

ADD . /src

RUN /usr/sbin/useradd --create-home /usr/local/arcgis --shell /bin/bash arcgis

RUN chown -R arcgis /src

USER arcgis

ENV HOME /usr/local/arcgis

RUN tar xvzf /tmp/ArcGIS_for_Server_Linux_103_142158.tar.gz -C /tmp/ && \
	/tmp/ArcGISServer/Setup -m silent -l yes -a /tmp/arcgisserver.ecp

EXPOSE 1098 4000 4001 4002 4003 4004 6006 6080 6099 6443	

FROM xzdbd/arcgis-pre

MAINTAINER xzdbd <xzdbd@sina.com>

RUN /usr/sbin/useradd --create-home --home-dir /usr/local/arcgis --shell /bin/bash arcgis

USER arcgis

COPY ./* /tmp/

RUN tar xvzf /tmp/ArcGIS_for_Server_Linux_103_142158.tar.gz -C /tmp/ && \
	/tmp/ArcGISServer/Setup -m silent -l yes -a /tmp/arcgisserver.ecp

EXPOSE 1098 4000 4001 4002 4003 4004 6006 6080 6099 6443	

USER root

RUN rm /tmp/ArcGIS_for_Server_Linux_103_142158.tar.gz && \
	rm -rf /tmp/ArcGISServer

CMD /bin/bash
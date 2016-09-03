FROM centos:6

MAINTAINER xzdbd <xzdbd@sina.com>

COPY ./* /tmp/

RUN yum install -y net-tools && \
    yum install -y fontconfig && \
    yum install -y freetype && \
    yum install -y gettext && \
    yum install -y libXfont && \
    yum install -y mesa-libGL && \
    yum install -y mesa-libGLU && \
    yum install -y Xvfb

RUN tar xvzf /tmp/ArcGIS_for_Server_Linux_103_142158.tar.gz -C /tmp/

CMD /bin/bash
FROM alpine:latest

ENV COW_INSTALLDIR /usr/local/bin

VOLUME /root/.cow/

COPY ./cow /etc/init.d/

RUN curl -L git.io/cow | bash &&\
    chmod u+x /etc/init.d/cow &&\
    update-rc.d cow defaults

CMD $COW_INSTALLDIR/cow

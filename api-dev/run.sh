#!/bin/bash

docker run --name api --rm -it -v /vagrant/gopath:/gopath -v /home/vagrant/docker-build/api/rc:/root/.cow/rc -p 8098:8098 xzdbd/api /bin/bash

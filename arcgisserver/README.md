# ArcGIS for Sever on Docker

## 10.3.1

### Build the Docker Image

* Put the ArcGIS for Server installer in the same folder with the [Dockerfile](https://github.com/xzdbd/dockerfiles/blob/master/arcgisserver/10.3.1/Dockerfile).

```bash
$ ls
ArcGIS_for_Server_Linux_1031_145870.tar.gz  arcgisserver.ecp  Dockerfile
```

* Build 

```bash
docker build -t xzdbd/arcgisserver:10.3.1 .
```

### Run a container 

Start the process in the container and attach the console to the process’s standard input, output, and standard error. (Temporary way)

```bash
docker run --name arcgisserver \
	   --rm -it --hostname arcgis \
	   -p 6080:6080 \
	   -p 6443:6443 \
	   xzdbd/arcgisserver:10.3.1 \
	   /bin/bash
```

Then start the ArcGIS server in the container.

```bash
/acgis/server/startserver.sh
```

### Access ArcGIS Server Manager

ArcGIS Server Manager is available now. Navigate to [http://localhost:6080/arcgis/manager](http://localhost:6080/arcgis/manager) in the host browser.



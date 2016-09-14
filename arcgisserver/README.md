# ArcGIS for Server on Docker

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

To run in detached mode (-d).

```bash
docker run --name arcgisserver \
	-d --hostname arcgis \
	-p 6080:6080 \
	-p 6443:6443 \
	xzdbd/arcgisserver:10.3.1
```
### Access ArcGIS Server Manager

ArcGIS Server Manager is available now. Navigate to [http://localhost:6080/arcgis/manager](http://localhost:6080/arcgis/manager) in the host browser.

## TO-DO
- [X] To run in detached mode (-d)
- [ ] Data volume
- [ ] ArcGIS for Server 10.3 image 
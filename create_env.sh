#!/bin/bash

cont_count=$1
echo " Creating $cont_count containers"
sleep 2;

for i in `seq $cont_count`
do
	echo "                    "
	echo "--------------------"
	echo "creating Docker-container:$i"
	sleep 1;
		docker run -it --name docker_container$i -d --rm yaminialekhya/image1 /bin/bash
	echo "docker_container$i has been created"
	echo "********************"
		docker inspect `docker ps -q` --format {{.NetworkSettings.Networks.bridge.IPAddress}} >IPs.txt
done

	./create_lb.sh

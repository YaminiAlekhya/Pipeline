#!/bin/bash

for i in `cat IPs.txt`
do
#	lb -a $i docker_container$i
	echo "docker_continer:$i has been added to load balancer"

done 

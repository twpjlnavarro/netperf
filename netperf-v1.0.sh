#!/bin/bash

#-- printf "url, code, namelookup, connect, appconnect, pretransfer, redirect, starttransfer, total, speed_upload, speed_download\n"

caca=$(date +"%m%d%H%M") 
while read site; do
	printf "$caca,"
	curl -w "@/home/ivlivs/netperf/curl-format.txt" -s -o /dev/null -s $site	
done <<EOF
www.ibm.com
www.google.com
www.movistar.com
www.youtube.com
www.ub.edu
www.theweatherpartner.com
https://webserver.enginy.eu.prod.hosts.ooklaserver.net:8080/download?size=25000000 
https://m0808.movispeed.es/apolo/data/a50m.dat
https://m0807.movispeed.es/apolo/data/a50m.dat
EOF

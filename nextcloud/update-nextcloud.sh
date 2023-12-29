#!/bin/bash

# Workaround, because:
# 1. nextcloud does not skip a release when updating and 
# 2. i am forced to update nextcloud using docker and not in the web interface
# Instead of adjusting several fields in the docker-compose each time, this can be done 
# directly in this script.

# The value can either be hardcoded in line 15 or passed as a parameter, i.e.:
# ./update-nextcloud.sh        -> update to hard coded version in line 15
# ./update-nextcloud.sh 25     -> update to 25-apache
# ./update-nextcloud.sh latest -> update to latest (apache)

### NEXTCLOUD VERSION ###
nc_version=25
#########################

if [ "$#" -eq 1 ]; then
    nc_version="$1"
    if [ "$nc_version" != "latest" ]; then
        nc_version="${nc_version}-apache"
    fi
else
    nc_version="${nc_version}-apache"
fi

export NEXTCLOUD_VERSION="$nc_version"

docker-compose pull && docker-compose up --build -d
# Content
Running latest nextcloud version inside apache server with reverse proxy, using mariadb and letsencrypt
https://github.com/nextcloud/docker/tree/master/.examples/docker-compose/with-nginx-proxy/mariadb/apache

# Updating
Use the `update-nextcloud.sh` script

# bz2
Maybe some apps requires `bz2` package:
`docker-compose exec nextcloud_app_1 apt-get update && apt-get install -y libbz2-dev && docker-php-ext-install bz2 && docker restart nextcloud_app_1`

or
```shell
docker exec -it nextcloud_app_1 /bin/bash
apt-get update && apt-get install -y libbz2-dev && docker-php-ext-install bz2
exit
docker restart nextcloud_app_1
```
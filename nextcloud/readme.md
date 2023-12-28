# Content
Running latest nextcloud version inside apache server with reverse proxy, using mariadb and letsencrypt
https://github.com/nextcloud/docker/tree/master/.examples/docker-compose/with-nginx-proxy/mariadb/apache

# Updating
Use the `update-nextcloud.sh` script

# Cron
Add cronjob to root Cron on host system:
```shell
echo "*/5 * * * * docker exec -u www-data nextcloud_app_1 php -f /var/www/html/cron.php
*/5 * * * * docker exec -u www-data nextcloud_app_1 php /var/www/html/occ files:scan --all
*/5 * * * * docker exec -u www-data nextcloud_app_1 php /var/www/html/occ files:scan-app-data
0 0 * * 0 docker exec -u www-data nextcloud_app_1 php /var/www/html/occ fulltextsearch:index" >> /var/spool/cron/root
```
(To the future-me: Use external storage support in future instead of `files_scan` command, this will do this whole sync stuff in background: [source](https://docs.nextcloud.com/server/latest/admin_manual/configuration_files/external_storage_configuration_gui.html))

# bz2
Maybe some apps requires `bz2` package:
```shell
docker-compose exec nextcloud_app_1 apt-get update && apt-get install -y libbz2-dev && docker-php-ext-install bz2 && docker restart nextcloud_app_1
```

or
```shell
docker exec -it nextcloud_app_1 /bin/bash
apt-get update && apt-get install -y libbz2-dev && docker-php-ext-install bz2
exit
docker restart nextcloud_app_1
```
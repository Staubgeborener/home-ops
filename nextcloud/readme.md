# Content
Running latest nextcloud version with fpm, nginx proxy (with letsencrypt) and postgres
https://github.com/nextcloud/docker/tree/master/.examples/docker-compose/with-nginx-proxy/mariadb/apache

# Updating
Use the `update-nextcloud.sh` script

# Cron
Add cronjob to root Cron on host system:
```shell
echo "*/5 * * * * docker exec -u www-data nextcloud_app php -f /var/www/html/cron.php
*/5 * * * * docker exec -u www-data nextcloud_app php /var/www/html/occ files:scan --all
*/5 * * * * docker exec -u www-data nextcloud_app php /var/www/html/occ files:scan-app-data
0 0 * * 0 docker exec -u www-data nextcloud_app php /var/www/html/occ fulltextsearch:index" >> /var/spool/cron/root
```
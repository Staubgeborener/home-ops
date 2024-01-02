ARG NEXTCLOUD_VERSION
FROM nextcloud:${NEXTCLOUD_VERSION}

RUN apt-get update && apt-get install -y libbz2-dev libsmbclient-dev git && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install bz2
RUN pecl install smbclient
RUN docker-php-ext-enable smbclient
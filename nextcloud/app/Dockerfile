FROM nextcloud:28.0.11-fpm

RUN apt-get update && apt-get install -y libbz2-dev && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install bz2

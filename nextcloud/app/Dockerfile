FROM nextcloud:30.0.1-fpm

RUN apt-get update && apt-get install -y libbz2-dev && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install bz2

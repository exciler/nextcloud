FROM nextcloud:26-fpm

RUN apt-get update && \
    apt-get install -y procps smbclient smbclient-dev && \
    pecl install smbclient && \
    docker-php-ext-enable smbclient && \
    rm -rf /var/lib/apt/lists/*

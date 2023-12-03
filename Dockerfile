FROM nextcloud:27-fpm

RUN apt-get update && \
    apt-get install -y procps smbclient libsmbclient-dev && \
    pecl install smbclient && \
    docker-php-ext-enable smbclient && \
    rm -rf /var/lib/apt/lists/*

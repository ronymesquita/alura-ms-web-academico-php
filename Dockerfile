FROM php

RUN apt-get update && apt-get install -y libzip-dev
RUN docker-php-ext-install zip
RUN docker-php-ext-install pdo pdo_pgsql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

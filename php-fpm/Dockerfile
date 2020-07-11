FROM php:7-fpm

RUN apt-get update && apt-get install -y

RUN apt-get install -y \
        libzip-dev \
        zip \
        git \
  && docker-php-ext-install zip \
        pdo \
        pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
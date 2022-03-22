FROM php:8.1-fpm-alpine
WORKDIR /var/www/html
RUN docker-php-ext-install pdo pdo_mysql
RUN apk add libxml2-dev && docker-php-ext-install soap
COPY php/php.ini /usr/local/etc/php/



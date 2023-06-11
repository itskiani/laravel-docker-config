FROM php:8.1-fpm-alpine
WORKDIR /var/www/html
RUN docker-php-ext-install pdo pdo_mysql
RUN apk add libxml2-dev && docker-php-ext-install soap opcache

# Add opcache configs into dockerfile
ADD php/opcache.ini /usr/local/etc/php/conf.d/opcache.ini

COPY php/php.ini /usr/local/etc/php/



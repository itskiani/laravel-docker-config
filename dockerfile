FROM php:8.1-fpm-alpine

# Set working directory
WORKDIR /var/www/html

# Install dependencies
RUN apk update && apk add --no-cache libxml2-dev

# Configure and install packages
RUN docker-php-ext-install pdo pdo_mysql soap opcache \
    pecl install xdebug && docker-php-ext-enable xdebug; \
    echo "xdebug.mode=coverage" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini;

# Add opcache configs into dockerfile
ADD php/opcache.ini /usr/local/etc/php/conf.d/opcache.ini

COPY php/php.ini /usr/local/etc/php/



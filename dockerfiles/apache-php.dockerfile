FROM php:5.6.32-apache-jessie

RUN apt-get update \
  && apt-get install -y nano \
  && docker-php-ext-install pdo pdo_mysql mysql mysqli

EXPOSE 80

COPY config/php.ini /usr/local/etc/php/
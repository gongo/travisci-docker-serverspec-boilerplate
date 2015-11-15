FROM php:5.6-apache

RUN apt-get -qqy update         \
 && apt-get -qqy install emacs  \
 && rm -rf /var/lib/apt/lists/*

COPY ./index.php /var/www/html/index.php

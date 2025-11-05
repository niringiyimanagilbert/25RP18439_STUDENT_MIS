FROM php:8.1-apache

WORKDIR /var/www/html

COPY ./src/ /var/www/html/

COPY ./init.sql /var/www/html/init.sql

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN a2enmod rewrite

EXPOSE 80

CMD ["apache2-foreground"]
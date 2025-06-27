FROM php:8.1-apache
COPY . /var/www/html/
EXPOSE 80

#Installer MySQL
Run docker-php-ext-install MySQL


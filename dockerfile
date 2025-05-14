# Use an official PHP image with Apache
FROM php:8.4-apache

# Enable Apache mod_rewrite (common for PHP routing)
RUN a2enmod rewrite

# Copy your project files into the Apache web root
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Set permissions (optional, depends on your project)
RUN chown -R www-data:www-data /var/www/html
# Use official PHP Apache image
FROM php:8.1-apache

# Install PHP extensions you need (e.g. mysqli for MySQL)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy your project files to Apache server directory
COPY . /var/www/html/

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Enable Apache mod_rewrite if needed
RUN a2enmod rewrite

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]

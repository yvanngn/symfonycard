FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libpq-dev \
    libzip-dev \
    libicu-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    curl


RUN docker-php-ext-install pdo pdo_mysql zip intl mbstring xml

# Install Composer
RUN php -r "copy('https://getcomposer.org/download/2.2.0/composer.phar', '/usr/local/bin/composer');"
RUN chmod +x /usr/local/bin/composer


WORKDIR /var/www/html

# Copy the application code
COPY . .

# Set permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html \

CMD ["php-fpm"]
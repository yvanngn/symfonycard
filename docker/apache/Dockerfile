FROM httpd:2.4.33-alpine

RUN echo "Include /usr/local/apache2/conf/extra/conf/*.conf" >> /usr/local/apache2/conf/httpd.conf && \
    echo "Include /usr/local/apache2/conf/extra/vhost/*.conf" >> /usr/local/apache2/conf/httpd.conf

WORKDIR /var/www/html

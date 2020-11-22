FROM wordpress:5.5.3-php7.4-apache
# Enable the headers module to append security headers in .htaccess
RUN a2enmod headers
COPY --chown=33:33 .htaccess /var/www/html/.htaccess
VOLUME [ "/var/www/html/wp-content/" ]
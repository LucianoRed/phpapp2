FROM quay.io/ricardi/php-base-7.4
COPY assets/ports.conf /etc/apache2/ports.conf
COPY assets/000-default.conf /etc/apache2/000-default.conf
ADD . /var/www/html/
USER 12345
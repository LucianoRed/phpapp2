FROM registry.access.redhat.com/ubi8/php-74
COPY assets/ports.conf /etc/apache2/ports.conf
COPY assets/000-default.conf /etc/apache2/000-default.conf
ADD . /opt/app-root/src
USER 12345
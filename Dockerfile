FROM registry.access.redhat.com/ubi8/php-74
USER root
COPY assets/httpd.conf /etc/httpd/conf/httpd.conf
ADD . /opt/app-root/src
WORKDIR /opt/app-root/src
# ENTRYPOINT [ "/usr/bin/container-entrypoint" ]
CMD mkdir /run/httpd ; /usr/sbin/httpd -D FOREGROUND
EXPOSE 8080
USER 12345
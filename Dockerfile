FROM registry.access.redhat.com/ubi8/php-74
USER root
COPY s2i/* /usr/libexec/s2i/
COPY s2i/container-entrypoint /usr/bin/container-entrypoint
ADD . /opt/app-root/src
WORKDIR /opt/app-root/src
RUN chmod +x /usr/bin/container-entrypoint /usr/libexec/s2i/* 
ENTRYPOINT [ "/usr/bin/container-entrypoint" ]
CMD mkdir /run/httpd ; /usr/sbin/httpd -D FOREGROUND
EXPOSE 8080
USER 12345
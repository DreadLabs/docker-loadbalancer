FROM nginx:1.17

ADD rootfs/ /

EXPOSE 80 443

VOLUME ["/etc/nginx/certs", "/etc/nginx/conf.d", "/etc/nginx/vhost.d", "/usr/share/nginx/html"]

FROM jwilder/docker-gen:0.7.3

ADD rootfs/ /

CMD ["-notify-sighup", "nginx", "-watch", "-wait", "5s:30s", "/etc/docker-gen/templates/nginx.tmpl", "/etc/nginx/conf.d/default.conf"]

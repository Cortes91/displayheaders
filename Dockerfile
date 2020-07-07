FROM openresty/openresty:1.11.2.5-alpine

EXPOSE 8080 6443

ADD mywebsite.crt /etc/ssl/certs/mywebsite.crt
ADD mywebsite.key /etc/ssl/private/mywebsite.key

ADD nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

RUN mkdir /var/log/nginx

RUN chgrp -R 0 /var/log/nginx && \
    chmod -R g=u /var/log/nginx

RUN chgrp -R 0 /usr/local/openresty/nginx/ && \
    chmod -R g=u /usr/local/openresty/nginx/
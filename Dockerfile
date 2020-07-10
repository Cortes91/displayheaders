FROM openresty/openresty:1.11.2.5-alpine

EXPOSE 8080 6443

ADD displayheaders.crt /etc/ssl/certs/displayheaders.crt
ADD displayheaders.key /etc/ssl/private/displayheaders.key

ADD nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

RUN mkdir /var/log/nginx

RUN chgrp -R 0 /var/log/nginx && \
    chmod -R g=u /var/log/nginx

RUN chgrp -R 0 /usr/local/openresty/nginx/ && \
    chmod -R g=u /usr/local/openresty/nginx/
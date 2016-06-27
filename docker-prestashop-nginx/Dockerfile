FROM nginx:1.9.9
MAINTAINER Mark Shust <mark.shust@mageinferno.com>

ENV PHP_HOST php-fpm
ENV PHP_PORT 9000

RUN mkdir /etc/nginx/ssl

WORKDIR /src

COPY ./default.conf /etc/nginx/conf.d/
COPY ./start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

CMD ["/usr/local/bin/start.sh"]
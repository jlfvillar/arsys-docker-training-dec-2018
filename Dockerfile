FROM ubuntu:18.04 

LABEL  MAINTAINER="jlfernandez"

RUN apt-get update
RUN apt-get install nginx -y
RUN echo '<marquee>Test number one</marquee>' \
    > /var/www/html/index.html

EXPOSE 80

ENV DATABASE_IP=192.168.1.44
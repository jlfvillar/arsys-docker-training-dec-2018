FROM ubuntu:18.04 

LABEL  MAINTAINER="jlfernandez"

RUN apt-get update
RUN apt-get install nginx -y
RUN useradd pepito
RUN apt-get update && apt-get install -y libltdl7 && rm -rf /var/lib/apt/lists/*

RUN echo '<marquee>Test number one</marquee>' \
    > /var/www/html/index.html

EXPOSE 80

VOLUME [ "/arsys-data" ]

USER pepito
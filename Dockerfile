FROM ubuntu:18.04 

LABEL  MAINTAINER="jlfernandez"

RUN apt-get update
RUN apt-get install nginx -y
RUN echo '<marquee>Test number one</marquee>' \
    > /var/www/html/index.html
RUN ls

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
CMD ["-h"]
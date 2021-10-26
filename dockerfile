FROM CENTOS:latest
MAINTAINER sumitkr091295@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assests/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*
RUN rm -rf _MACOSX markups-kindle kidle.zip
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND"]
EXPOSE 80

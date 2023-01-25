FROM  centos:latest
MAINTAINER vikashashoke@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/steller.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip steller.zip
RUN cp -rvf steller/* .
RUN rm -rf steller steller.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 

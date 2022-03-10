FROM centos:latest
MAINTAINER baghelneelesh@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page276/rubic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip rubic.zip
RUN cp -rvf public_html/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

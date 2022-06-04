FROM centos:7
RUN yum -y update
RUN yum install -y java
RUN yum install -y httpd
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/free-css-templates/download/page247/kindle.zip /var/www/html
RUN tar -xvzf kindle.zip
RUN mv kidle/* /var/www/html
EXPOSE 8080
CMD ["/var/www/html/bin/catalina.sh", "run"]

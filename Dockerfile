FROM ubuntu

RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
ENV APACHE_RUN_USER www-data 
ENV APACHE_RUN_GROUP www-data 
ENV APACHE_LOG_DIR /var/log/apache2 
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]

FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY files/index.html /var/www/html/index.html
RUN service apache2 restart
RUN service apache2 enable

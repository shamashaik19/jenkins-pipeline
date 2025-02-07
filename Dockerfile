FROM ubuntu
EXPOSE 80
RUN apt update
RUN apt install git -y
RUN apt install apache2 -y
RUN rm -rf /var/www/html/index.html
RUN git clone https://github.com/shamashaik19/jenkins-pipeline.git
CMD apachectl -D FOREGROUND



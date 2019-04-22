#---------------------------------------------------------------------------------------------------------
# Dockefile to build Docker Image of Apache WebServer running on CentOS
#
# Made by Oleksiy Alex  16-April-2019
# Use example by Denis Astahov ADV-IT https://github.com/adv4000/docker/blob/master/DockerfileUbuntu.txt
#---------------------------------------------------------------------------------------------------------

FROM centos:7

RUN yum -y install httpd

RUN echo 'Hello World from Docker!' > /var/www/html/index.html


CMD ["/usr/sbin/httpd", "-D","FOREGROUND", "192.168.56.5:80"]
EXPOSE 80
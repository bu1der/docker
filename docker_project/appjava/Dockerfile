#--------------------------------------------------------
# Dockefile to build Docker Image of Java app using Maven
#
#--------------------------------------------------------

FROM maven:3.6.1-jdk-8

MAINTAINER alex

COPY HelloWorld.jar /home/vagrant/mydocker/HelloWorld.jar

CMD ["java","-jar","/home/vagrant/docker_project/HelloWorld.jar"]
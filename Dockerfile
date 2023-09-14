FROM  ubuntu:latest
RUN mkdir  /Project
WORKDIR /Project 
COPY . /Project
RUN apt-get install git -y
RUN apt-get install default-jdk -y
RUN apt-get install mysql-server -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.80.tar.gz

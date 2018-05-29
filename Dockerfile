FROM jenkins/slave:3.19-1
MAINTAINER Oleg Nenashev <o.v.nenashev@gmail.com>
LABEL Description="This is a base image, which allows connecting Jenkins agents via JNLP protocols" Vendor="Jenkins project" Version="3.19"
USER root
COPY jenkins-slave /usr/local/bin/jenkins-slave
RUN apt-get update
RUN apt-get install -y  build-essential
ENTRYPOINT ["jenkins-slave"]

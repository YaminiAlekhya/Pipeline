FROM ubuntu
RUN apt-get update
RUN apt-get install open-jdk7
RUN apt-get install tomcat
COPY target/Pipeline.war user/local/tomcat/webapps
ENTRYPOINT startup.sh


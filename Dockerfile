FROM tomcat:7.0
COPY target/Pipeline.war /usr/local/tomcat/webapps
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash


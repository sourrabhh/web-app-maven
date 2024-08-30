FROM tomcat:9.0.93-jre17

MAINTAINER Sourabh Shinde <souraabh@yahoo.com>

COPY target/web-app.war /usr/local/tomcat/webapps/web-app.war

# Tomcat port exposed to 9090 in config file
EXPOSE 9090



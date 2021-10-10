FROM tomcat:8.0
# Dummy text to test 
RUN yum install vim -y
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war

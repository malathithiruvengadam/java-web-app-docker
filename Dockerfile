FROM httpd:latest
# Dummy text to test 
COPY target/java-web-app*.war /usr/local/httpd/webapps/java-web-app.war

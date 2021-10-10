FROM centos
MAINTAINER malathithiruvengadam@yahoo.com
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.72/bin/apache-tomcat-8.5.72.tar.gz
RUN tar -xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.72/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
WORKDIR /opt/tomcat/webapps
COPY target/java-web-app*.war /opt/tomcat/webapps/java-web-app.war
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]


FROM tomcat:8.0.41-jre8
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY target/trucks.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
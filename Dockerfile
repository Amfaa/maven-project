FROM tomcat
LABEL  name=mazhar
COPY webapp/target/webapp.war /usr/local/tomcat/webapps

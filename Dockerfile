FROM tomcat
LABEL  name=mazhar
COPY webapp/target/webapp.war 996198785118.dkr.ecr.ap-south-1.amazonaws.com/devops-repo:latest

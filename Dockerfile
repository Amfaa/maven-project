FROM tomcat
LABEL  name=mazhar
COPY webapp/target/webapp.war /var/lib/jenkins/workspace/docker-image-ECR-pipeline/server/target/jacoco.exec


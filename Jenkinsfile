pipeline
{
agent any
stages
{
   stage('scm checkout')
   { steps {  git branch: 'master', url: 'https://github.com/Amfaa/maven-project.git'  }  }


   stage('execute unit test')
   { steps {  withMaven(jdk: 'JDK_HOME', maven: 'Maven_Home') 
      { sh 'mvn test' }   
   } }

   stage('code build && generate artifacts')
   { steps { withMaven(jdk: 'JDK_HOME', maven: 'Maven_Home') 
      { sh 'mvn clean package' }  
   } }
   
   stage('  create docker image & push to dockerhub')
   {steps { sh 'docker build -t amfaa/docker:v1 .'} }
   
 
   
   
}
}

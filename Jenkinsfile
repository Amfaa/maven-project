Git repo maven code jenkinsfile
pipeline
{
agent any
stages
{
   stage('scm checkout')
   { steps {  git branch: 'master', url: 'https://github.com/Amfaa/maven-project.git'  }  }


   stage('execute unit test')
   { steps {  withMaven(jdk: 'MY_JDK', maven: 'MY_MAVEN') 
      { sh 'mvn test' }   
   } }

   stage('code build && generate artifacts')
   { steps { withMaven(jdk: 'MY_JDK', maven: 'MY_MAVEN') 
      { sh 'mvn clean package' }  
   } }

   
   
}
}
}

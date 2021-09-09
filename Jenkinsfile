pipeline
{
    agent any 
    stages
    {
        stage ('scm checkout')
        {steps {git branch: 'master', url: 'https://github.com/Amfaa/maven-project.git'}}

        stage ('execute unit test')
        {steps { withMaven(jdk: 'JDK_HOME', maven: 'Maven_Home') 
          {sh 'mvn test'}
        }      }

        stages ('code build && generate artifacts')
        {steps { withMaven(jdk: 'JDK_HOME', maven: 'Maven_Home') 
            {sh 'mvn clean package'}
        }   }

        stage ('deploy to a dev tomcat')
        {steps { sshagent(['tomcatdeploy'])
        sh 'scp -o StrictHostKeyChecking=no */target/*.war ec2-user@13.235.13.64:/var/lib/tomact/webapps' }   }
       
    }
}

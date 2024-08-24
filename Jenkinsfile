pipeline{
    agent any
    environment {
        PATH = "$PATH:/apache-tomcat-9.0.93/bin"
    }

    stages{
        stage("Get Code"){
            steps{
                git branch:'main',
                url: 'https://github.com/sourrabhh/web-app-maven.git'
            }
        }
        stage('Maven Build'){
            steps{
                sh 'mvn clean package'
            }
        }

        stage('Code Deploy'){
            steps{
                sshagent(['Tomcat-Server-03']) {
                    sh 'scp -o StrictHostKeyChecking=no target/web-app.war ubuntu@34.239.250.35:/home/ubuntu/apache-tomcat-9.0.93/webapps'
                }
            }
        }
        
    }
}

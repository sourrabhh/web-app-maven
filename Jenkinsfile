pipeline{
    agent any
    environment {
        PATH = "$PATH:/apache-tomcat-9.0.93/bin"
    }

    stages{
        stage("Get Code"){
            steps{
                git 'https://github.com/sourrabhh/web-app-maven.git'
            }
        }
        stage('Maven Build'){
            steps{
                sh 'mvn clean package'
            }
        }

        stage('Code Deploy'){
            steps{
                sshagent(['Tomcat-Server']) {
                    sh 'scp -o StrictHostChecking=no target/web-app.war ubuntu@54.224.164.197:/home/ubuntu//apache-tomcat-9.0.93/webapps'
                // some block
                }
            }
        }
        
    }
}

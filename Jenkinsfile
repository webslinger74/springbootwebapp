pipeline {
    tools {
        maven "maven"
    }
    agent any
    stages {
        stage("Build") {
            steps {
                echo  'proceeding to build...'
                sh 'mvn clean install package'
            }
        }
          stage("Test") {
            steps {
                echo  'proceeding to test...'
            }
        
    }
               stage("Docker Build Image And Push") {
            steps {
                echo  'proceeding to deploy...'
                app = docker.build("webslinger74/jenkinsTest")
                docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
                    app.push("${env.BUILD_NUMBER}")
                    app.push.("latest")
                }
            }
        
    }
           stage("Push Artifact") {
            steps {
                echo  'proceeding to push artifact...'      
            }
    }
}
}

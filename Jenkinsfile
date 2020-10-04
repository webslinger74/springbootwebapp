pipeline {
    tools {
        maven "Maven"
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
               stage("Deploy") {
            steps {
                echo  'proceeding to deploy...'
            }
        
    }
    }
}

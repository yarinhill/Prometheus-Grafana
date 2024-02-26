pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/yarinhill/Grafana.git']]])
            }
        }

        stage('Build and Deploy') {
            steps {
                dir('Grafana') {
                    echo 'Contents of Projects/Grafana:'
                    sh 'ls -la'
                    sh 'docker-compose up -d'
                }
            }
        }
        
        // Other stages for additional steps
    }

    // Post-build actions, notifications, etc.
}

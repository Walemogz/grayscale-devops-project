pipeline {
    agent any

    stages {
        stage('CI') {
            steps {
                echo 'CI pipeline started successfully'
            }
        }

        stage('Check Docker') {
            steps {
                bat 'docker --version'
            }
            
        }
        stage('Docker Build') {
            steps {
                bat 'docker build -t grayscale-website:latest .'
    }
}
    }
}
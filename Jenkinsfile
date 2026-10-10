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
    }
}
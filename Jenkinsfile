pipeline {
    agent any

    stages {
        stage('CI') {
            steps {
                echo 'CI pipeline started successfully'
            }
        }

        stage('Build Application') {
            steps {
                bat 'npm install'
                bat 'npm run build'
            }
        }

        stage('Check Docker') {
            steps {
                bat 'docker --version'
            }
        }

        stage('Docker Build') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'dockerhub-jenkins',
                        usernameVariable: 'DOCKER_USERNAME',
                        passwordVariable: 'DOCKER_PASSWORD'
                    )
                ]) {
                    bat 'powershell -Command "$env:DOCKER_PASSWORD | docker login -u $env:DOCKER_USERNAME --password-stdin"'
                    bat 'docker build -t walemogz/grayscale-website:latest .'
                }
            }
            stage('Docker Push') {
    steps {
        withCredentials([
            usernamePassword(
                credentialsId: 'dockerhub-jenkins',
                usernameVariable: 'DOCKER_USERNAME',
                passwordVariable: 'DOCKER_PASSWORD'
            )
        ]) {
            bat 'powershell -Command "$env:DOCKER_PASSWORD | docker login -u $env:DOCKER_USERNAME --password-stdin"'
            bat 'docker push walemogz/grayscale-website:latest'
        }
    }
}
        }

    }
}
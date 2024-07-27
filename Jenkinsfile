pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout code from GitHub
                git 'https://github.com/kalsi2202/term-project-devops.git'
            }
        }
        stage('Build') {
            steps {
                // Run build commands (e.g., npm install)
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                // Run tests (e.g., npm test)
                sh 'npm test'
            }
        }
        stage('Deploy') {
            steps {
                // Run deployment commands
                sh './deploy.sh'
            }
        }
    }
    post {
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}

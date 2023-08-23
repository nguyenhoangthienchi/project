pipeline {
    agent any

    stages {
        stage('Prepare') {
            steps {
                checkout scm
                sh 'npm i'
            }
        }

        stage('Unit test') {
            steps {
                // Checkout the source code from your version control system
                checkout scm

                // Install dependencies
                sh 'npm run test'
            }
        }

        stage('Build') {
            steps {
                // Run your tests
                sh 'npm run build'
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo build the app'
            }
        }
    }
}
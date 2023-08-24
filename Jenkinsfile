pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = 'AKIAYRELTXARGABKLU6A'
        AWS_SECRET_ACCESS_KEY = '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'
        AWS_DEFAULT_REGION = 'us-east-1'
    }

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
                sh 'aws ecr-public get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin public.ecr.aws/f4n9a5k6'
                sh 'docker build -t cicd-app-chinht2 .'
                sh 'docker tag cicd-app-chinht2:latest public.ecr.aws/f4n9a5k6/cicd-app-chinht2:latest'
                sh 'docker push public.ecr.aws/f4n9a5k6/cicd-app-chinht2:latest'
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo $TIME'
                sh 'aws elasticbeanstalk create-application-version --application-name cicd-app --version-label $TIME --source-bundle S3Bucket=my-aws-cicd-bucket,S3Key=docker-compose.zip'
                sh 'eb deploy blue-app --version $TIME'
                sh '''
                response=$(curl -s -o /dev/null -w "%{http_code}" <URL>)

                if [ "$response" -eq 200 ]; then
                    echo "Request successful"
                else
                    echo "Request failed with status code $response"
                    exit 1
                fi
                '''
            }
        }
        stage('Blue/Green swap') {
            steps {
                sh 'eb swap blue-app'
            }
        }
    }
}
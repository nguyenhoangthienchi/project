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
                sh 'docker login -u AWS -p eyJwYXlsb2FkIjoieXVRLytscXVDVW5HMU0zTGNDM2xmRzRReXQzVkpyWnowWTNpZkdDZmE5TXRhdGV5QmhEelhnQXlucERtam5jR0d3S0JZRm1ReTBrUDZDMEh0Ynp3UkRBRzdhdEp3YjlRSnVnU1p5Q2xIeUJ1aXJLQWZKNlZpaDJLWUY2aWx0cHRwa292ajRMUnN6ZHZJOUFHWWVWbFBUbkd6TmV0RGc5blZmd1hiMnJzRmtnSHI4U0toNWgvcTd6ZEpYZkxBV1RUZWd0Kzc5N0d2aGo2UHVBbzd1c1loRVUwYTB2ME94dlhYbkdKeG1pZUp1dVBSQkF5QW9MUERtK3RGcEVGUGJQVmRTbXdHdnd6TDlGbXBVVEJKY1hNdWpWWHRFWVhVT09MU2I5RnRxaTBLQk5oQkN4L3dMWTliWEdkb3NjT0ZYWVhjWWtkN09ISkpnc2NTcGtzUWdTckUySWZSN1FnMHYxVWdaMVVvYTBMSDcvT0FZN080eFc5UEtnK1FLUDB0MXF6dXZDQWU0YWxwK1RJZWdIaEE3dFZBT3BUcUhjbWhmcmxHWjFUZ0plczNYOUlsQnF5SUVaRkJlMDBwVFZsemxHVTNWZnh0dnZRUnZod0ZxVld5RGVlaEhKNTltOWV0OXJJd3QxU1Uzbk1zWGt2U3JpTklRcW93SktiNUpqMnQ3UDIwU0M5cDZhZzJQQ3FyVzZrNDB1Z0U2cFMydmlBSDh0Q0xyRDZ2VTQ4a3hub3F5aXhSR2NzWUZkNWZFWEhDckRNN05vNkRITzJvSHY0UEx0ZDdybjdKL1Q5SzBaWHFnajB5UFhjUWVOalF0Wm5IM2pUVEJ1TzVQaHNMTHRhdU1qQU1QQnVYdjgrKzhpNkNHbVNuVG1CZ0c3RkhYQ1hQZ1IyQlF5WlJ0eXdHcEk4VVJSVUJ6L1R6QjNTQWhQelZSZHFrSGRiWWVaZExaaGRDZk9LYXdGM3F0WWpIa0FxOXRkdFdkcmhqV2UzQW1ML3hrM280RUlSVGZhT1dwRTYxQXZmK05tVlpCSk9hSmpXUTg1THQwOXFNUUdGWW1DM2ZDdHhiZUF2bjl0N04yZytYR25TeUx2UCtQdEg5cENwMkw1OG1YSmlOelBDa2hZeE9VeUhSSHQ4dGVyZitodHRVLzJDTGphcElZeHh4RmlDZFdjYjdQZ3dxWEllNlBFSlBCaUZTRkxXS2pMQWFoU0pHZENiUUQxeGgwclJXUkNOUUQzRWJtZVRhb1l1dis4L211UkFYYmJuSGgrTDAxNFNRV1ZadkpyOTBBRmVDRHZFWHZhYmYybWg0dlZnNkYyYnh4MmdqSnJDKzhubTR0aGdGdUxmVUJUUWdDbXpzV1haengyanZHZWN6Z1U1TE10ZlU4SHlPdz09IiwiZGF0YWtleSI6IkFRRUJBSGh3bTBZYUlTSmVSdEptNW4xRzZ1cWVla1h1b1hYUGU1VUZjZTlScTgvMTR3QUFBSDR3ZkFZSktvWklodmNOQVFjR29HOHdiUUlCQURCb0Jna3Foa2lHOXcwQkJ3RXdIZ1lKWUlaSUFXVURCQUV1TUJFRURCZ0NpOGFxNzlHWXVVNE5wQUlCRUlBN0dGZFJUZ3FKM3gxUlJrK3VhT3NMb1NWTjExL3FDZmVVUVhGWG5GcUh4Z0Y2L0trc2pVcW9OK2p5T3FJb2QrVHlUdDQzV09MclM5Vm10TWc9IiwidmVyc2lvbiI6IjIiLCJ0eXBlIjoiREFUQV9LRVkiLCJleHBpcmF0aW9uIjoxNjkyODkwMjYyfQ== https://586555832354.dkr.ecr.us-east-1.amazonaws.com'
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
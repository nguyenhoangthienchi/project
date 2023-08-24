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
                sh 'docker login --username AWS --password eyJwYXlsb2FkIjoiSG5hYnJTSHcwemZyNTdhZDhZbC81dXNsN2dlV3ZrL3F4ZEJncXhlVjgvc2o4WG1TZzVwdC80WWorTS92dFhGSjZDMTNNZFcxR3F4WERFcFIzQ1BtUmh3c0tIT3J0UjNyZmdNczhNMUpqZ0NlM3RjSWgyNWtFNHExMU05VU1WaCs5SHdCNGdxVUcvd0R5cWo1d0l2aGtIQ0pGekZTYWo5NTZnUzEyR3pDZFdhWGsxVEEwaThVY2lFQzB6ZEhleTRvTkVNcEhDRCs1anFKMkJCQ1R0YzJBSUR3OXRCMFh1MHZWRnlzUE8wTUhiYTNYWVViT3p0Z3NJQm1CR1dhNHREck53WG5FdWtGMjZOcHpSTmd0L0YwVnYyYUxXWi9jR0w2aU50YURNcEdkZ20vLzJweDNQQk5SUnNTUXZMQzJxbnBEdTNDNTRzUEkxV2NBUVFKQ2p4TzE2eWZzRXRpMXVqYlZZQWMyL2tKLzdES1pqWDVNQlpnb21HQmQ2N1pySWdnVVljQ2RhT0VvWGxPemtWRFNlUFNkc2xOSHRmV2VmZ2N5Z0VhYjIzcTNqTTNRaU1QU3crZDRoUU9WL25sbEd2TnhwQ05OSWRNcmtYWDFWMGk2dHhkamNvU0s5V0VNYmlBbDZzNXFXVUpTdzA5c0s2dUU1UWZmOS9QWTZDbWo5YnVhVlUwWFV6WnJpOHgvaUVlbGVhaGlFd3ozZ1lYUTl4NFh0eFl2a2hNMmczS1NSbkxXZXFsTktEbDBkSjl0S1JMR0lTUXFuODlydXdPQ2MzVFJVOElCOWxkRlY0KzgrS0I3NUxVSlFGY3VGRzIxeW9iMFh1OGFFQjVYOVl6aE50NS9adVo5ak51UFlueEZlb0tLOXREempwc2JLenpEMk8xOWFsakQxMksrRXN1ZDBrNngxaVUvbzZUT2JzbVpyVTlIYm5haFQzUjNTalhYNDdaOHN4V1BiZGxEQlgvTXo2VVVIOFQ0Ni84N3UzM1NiWXAvYWtkV2hiTnJtemxQejJVdjZRQnJiWFpMOFF3S0NyOFdmM1NwOHBvM2hvalpXRHJOUEQybXVjd21LMlFXeVdaR09Cc2VDYWFCYzZSRnlZVEllUE14SHRrZCtRWmtCRmEwZEt5VTk3cUlXTldoa1lNV3U1bytReXllUWpQVUxsTHNTd3EwM1Rrb29kdXE0SDIzMGhlc0ROTC95cTdZYjZSaVNXZGcxN3JGSzR2L1dlQXA3L2tOUDFnUE8vWTkwOFJZNHJoTDdheEozNlFUVUZxaXoyL1ozM3FENUxrTjAzQ1F4bS9ZU0s1ek8rUEQxT3d2aXlQYkdIdStaUXJzQkh1anRja0o5Z0NSVjJaM2xVTXUyN3p4Z3lkN2Q5ZiIsImRhdGFrZXkiOiJleUpRUkZnaU9pSlFTQzlRVlhRclVqaGlkVlY1ZDJSblVUQmFZV3MwUTNWSlptOTBXa1JKTjFsbVJIRjNSMWxvU1ZsbUsyWmlTamhTYlhkUVNYVlJka3BTYm5wclRXNXZWakJLVFVSTGRYWnNMelpxZEdKVlN5OWFNRGQ1UzNoWlJFbHNTMnN3YlZwMFlURkhRbVkwTkRocE0wNXhkMkpSV25oR2QwazFaRWxpWW1wSFNrdENjMVY1ZFZaNVJVdEJUVEZNWkVSM2RYaFBkMmg2YVhsVlRFNHpSSFp1T0hkb1NVbFdZVzFyYVVaclFURldRekYzV2xONmFHcFpWbTlhVDFBeUx6UnFjSEpZVm0xaEszWmFkWEJLYlRWeFdqWkxSVWs0WjNFeU1GQkJkVGhSZUZCc1ZIbG9kR0ZUWlhwUFMyRnhTVWxNTWpOS1YyNW1TblZYYlZKRVFXNWlPWEU1YVV4R1NGSmtObk5QV1hNM2FFZEpMMDE2V0VkQ1QxTlJReXRyZGtaa05uUkpNMklyU0V4d1RrOVdlRU5DTXpodWRWb3dMM2xXT1dKeVRFWlNLMUlyVFVONU5qZFhWRWh1WVRKRU1HbzNMMko2ZW05TmNrRTlQU0lzSWtsQlJDSTZJbTExUVU5UVdHdE9UMFEyYTJsWFoxTTNZM1JsT1VsdmRIZHlTbFV3VUZObVNucHVkMGt6Y25WR1FsSXplbGhWWmpKUWR6aFhjRUpMZGswNFFrOHlSMnc1Y0RocWNVeElaREIxYkhNMmNsVlNOM1ZWYWxWWlNWbDZNM1pWTmlzNVpYWjZWRzV0Y1VaUk5FVmpaVE40YVVsRFJYcFlWM1kxY1ZGSGFIbG5kRGwyZUc1SE9FcFhLMEZrWTA1a1JHcG5Ra2RJTlZwbVRDODBTM1o1TW5OT1RXcGFSR1F2Y0dneE1IRkNZakJ1Ym1aNFZqQnBORFJKUkdOMmRHOVFZMUp3YjI1RE9YaEtUR2x3VVRGTFVuZEhPWFVyTW5wQlJWVnpTalVyYlZGTGFGbEJibE14VTJKaE5uRkpablp4Vm1oTlZFWmpZaTl6VjJSNFdtcEthMjR2V1hVM05rSjJjM0J0V1RaT1luWXdaSHAzU1VkSlNWRnVjbmhKV0ZKd05FOU9URlJXT0Rsb2QxSXZhRzFsTUZKRmJXaGhjbmhPS3paS0szUlVWMUJNVlV0R2VXTTNWVmQ2VDJ4b09USTNPWGxVVHpOQldUSjRRVDA5SW4wPSIsInZlcnNpb24iOiIzIiwidHlwZSI6IkRBVEFfS0VZIiwiZXhwaXJhdGlvbiI6MTY5Mjg5Mjc5NX0= public.ecr.aws/f4n9a5k6'
                sh 'docker build -t cicd-app-chinht2 .'
                sh 'docker tag cicd-app-chinht2:latest public.ecr.aws/f4n9a5k6/cicd-app-chinht2:latest'
                sh 'docker push public.ecr.aws/f4n9a5k6/cicd-app-chinht2:latest'
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                    export TIME=$(date +%s)
                    aws elasticbeanstalk create-application-version --application-name cicd-app --version-label $TIME --source-bundle S3Bucket=my-aws-cicd-bucket,S3Key=docker-compose.zip
                    /var/lib/jenkins/.local/bin/eb deploy blue-app --version $TIME
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
                sh '/var/lib/jenkins/.local/bin/eb swap blue-app'
            }
        }
    }
}
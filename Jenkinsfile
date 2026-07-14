pipeline
{
    agent any

    tools
    {
        maven 'Maven_3.9.13'
    }

    environment
    {
        build_Number = "${BUILD_NUMBER}"
    }

    stages
    {
        stage('Checkout Code from GitHub')
        {
            steps()
            {
                git branch: 'DevOpsFebruary2026', url: 'https://github.com/MithunTechnologiesDevOps/Maven-Web-Application.git'
            }
        }

        stage('Build Artifiact using Maven')
        {
            steps()
            {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image')
        {
            steps()
            {
                sh "docker build -t 210447604094.dkr.ecr.ap-south-1.amazonaws.com/login-service:${build_Number} ."
            }
        }

        stage('Authenticate and Push Docker Image to AWS ECR')
        {
            steps()
            {
                sh 'aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 210447604094.dkr.ecr.ap-south-1.amazonaws.com'
                sh "docker push 210447604094.dkr.ecr.ap-south-1.amazonaws.com/login-service:${build_Number}"
            }
        }
    }
}
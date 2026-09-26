pipeline
{
    agent any

    tools
    {
        maven 'Maven_3.9.11'
    }

    environment
    {
        buildNumber = "${BUILD_NUMBER}"
    }

    stages
    {
        stage('Checkout Code from Git')
        {
            steps()
            {
                git branch: 'DevOpsApril2026', url: 'https://github.com/MithunTechnologiesDevOps/Maven-Web-Application.git'
            }
        }

        stage('Build Project using Maven')
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
                sh 'docker build -t 210447604094.dkr.ecr.ap-south-1.amazonaws.com/maven-web-application:${buildNumber} .'
            }
        }

        stage('Authenticate and Push Docker Image to AWS ECR')
        {
            steps()
            {
                sh 'aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 210447604094.dkr.ecr.ap-south-1.amazonaws.com'
                sh 'docker push 210447604094.dkr.ecr.ap-south-1.amazonaws.com/maven-web-application:${buildNumber}'
            }
        }

        stage('Delete Docker Image Locally in Jenkins')
        {
            steps()
            {
                sh 'docker rmi -f 210447604094.dkr.ecr.ap-south-1.amazonaws.com/maven-web-application:${buildNumber}'
            }
        }

        stage('Update Image Tag in Kubernetes Manifest')
        {
            steps()
            {
                sh "sed -i 's/Build_Tag/${buildNumber}/g' MavenWebApplication.yaml"
            }
        }

        stage('Deploy Application in EKS Cluster')
        {
            steps()
            {
                sh 'kubectl delete deployment webpage-deployment -n production || true'
                sh 'kubectl apply -f MavenWebApplication.yaml'
            }
        }
    }
}
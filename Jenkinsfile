node{

def mavenHome = tool name: 'maven3.9.15'

echo "The Branch name is: ${env.BRANCH_NAME}"
echo "The Node name is: ${env.NODE_NAME}"
echo "The Build number is: ${env.BUILD_NUMBER}"



stage('CheckOutCode'){
git branch: 'development', credentialsId: '5982b48d-624d-426d-a084-521b4ec477fb', url: 'https://github.com/MithunTechnologiesDevOps/Maven-Web-Application.git'
}

stage('Build'){
sh "${mavenHome}/bin/mvn clean package"
}

stage('ExecuteSonarQubeReport'){
sh "${mavenHome}/bin/mvn clean package sonar:sonar"
}

stage('UploadArtifactsIntoNexus'){
sh "${mavenHome}/bin/mvn clean deploy"
}

stage('DeployAppIntoTomcat'){
sshagent(credentials: ['0faf9fbb-c92f-462f-9901-11e31c51973b']) {
sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@172.31.6.158:/opt/apache-tomcat-9.0.121/webapps/"  
}
}

}

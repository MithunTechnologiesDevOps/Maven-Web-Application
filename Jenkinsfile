node{

properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '5', daysToKeepStr: '', numToKeepStr: '5')), pipelineTriggers([pollSCM('* * * * *')])])

timestamps {
    // some block
}


def mavenHome = tool name: 'maven3.9.15'

stage('CheckOutCode'){
git branch: 'development', credentialsId: 'ca0ae45c-d1ec-47c1-a168-ad748a6dfb88', url: 'https://github.com/MithunTechnologiesDevOps/Maven-Web-Application.git'
}

stage('Build'){
sh "${mavenHome}/bin/mvn clean package"
}
/*
stage('ExecuteSonarQubeReport'){
sh "${mavenHome}/bin/mvn clean sonar:sonar"
}

stage('UploadArtifactIntoNexus'){
sh "${mavenHome}/bin/mvn clean deploy"
}

stage('DeployAppIntoTomcatServer'){
sshagent(['3354264c-d3a1-4007-833c-4ad937c3533c']) {
 sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@172.31.34.237:/opt/apache-tomcat-9.0.118/webapps/"  
}
}
*/

}

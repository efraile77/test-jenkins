pipeline {
  environment {
    registry = "efraile77/test-jenkins"
    registryCredential = 'git-user'
    dockerImage = ''
  }
  agent any
  stages {
    stage('SCM Checkout') {
      steps {
        git branch: 'dev', url: 'https://github.com/efraile77/test-jenkins.git'
            }
        }    

    stage('Docker Build') {
      agent any  
      steps{
        sh 'docker build -t efraile77/test-image:latest .'
        
      }
    }
  }
}  
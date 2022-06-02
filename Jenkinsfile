pipeline {
  environment {
    registry = "efraile77/test-jenkins"
    registryCredential = 'git-user'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning our Git') {
      steps {
      git 'https://github.com/efraile77/test-jenkins.git'
      }
    }
    stage('Docker Build') {
      steps{
        sh 'docker build -t efraile77/test-image:latest .'
        
      }
    }
  }
}  
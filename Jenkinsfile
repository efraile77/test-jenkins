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
        git branch: 'dev', credentialsId: registryCredential, url: 'https://github.com/efraile77/test-jenkins.git'
            }
        }    
    stage('Cloning our Git') {
      steps {
      git branch: 'dev', credentialsId: '12a14005-8a58-4825-bf54-f6ab05674f78', url: 'https://github.com/efraile77/test-jenkins'
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
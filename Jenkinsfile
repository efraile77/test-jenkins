pipeline {
  environment {
    registry = "efraile77/test-jenkins"
    registryCredential = 'git-user'
    dockerImage = ''
  }

    options {
        //TODO: is it possible to set the timeout depending on the number of deployable models?
        timeout(time: 150, unit: 'MINUTES')
        buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
    }  

  stages {
    stage('build') {
     agent {
      dockerfile {
        filename 'Dockerfile.build'
        dir 'build'
        label 'my-test-label'
        args '-v /tmp:/tmp'
         }
      }  
      steps {
          sh 'docker build -t $image .'
            }
        }    
  }
}  
pipeline {
  environment {
    registry = "efraile77/test-jenkins"
    registryCredential = 'git-user'
    dockerImage = ''
  }

  agent {
    dockerfile {
        filename 'Dockerfile.build'
        dir 'build'
        label 'my-test-label'
        registryUrl 'https://registry.app.corpintra.net'
        args '-v /tmp:/tmp'
    }
}  

    options {
        //TODO: is it possible to set the timeout depending on the number of deployable models?
        timeout(time: 150, unit: 'MINUTES')
        buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
    }  

  stages {
    stage('build') {
      steps {
          sh 'docker build -t $image .'
            }
        }    
  }
}  
pipeline {
  environment {
    registry = "efraile77/test-jenkins"
    registryCredential = 'git-user'
    dockerImage = ''
  }
  agent {
        docker {
            image "registry.app.corpintra.net/ddca-service/ddca-service/ddca-devops-tool:1.0"
            registryUrl 'https://registry.app.corpintra.net'
            registryCredentialsId 'ddca_docker_repo'
            args '-u root -v /var/run/docker.sock:/var/run/docker.sock -v /home/ubuntu/.kube:/root/.kube  --net="host"'
        }
    }
    options {
        //TODO: is it possible to set the timeout depending on the number of deployable models?
        timeout(time: 150, unit: 'MINUTES')
        buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
    }  


}  
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
stage('Building our image') {
steps{
script {
dockerImage = docker.build registry + ":$BUILD_NUMBER"
}
}
}
}
}
pipeline {
    agent any

    options {
        ansiColor('xterm')
    }

    stages {
        stage('Clean') {
            steps {
                sh 'rm -rf output-virtualbox* boxes'
            }
        }
        stage('Build') {
            steps {
                sh 'packer build centos-7-base.json'
            }
        }
    }
}

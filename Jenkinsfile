pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("html-jenkins")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh 'docker stop html-jenkins || true'
                    sh 'docker rm html-jenkins || true'
                    sh 'docker run -d -p 8089:80 --name html-jenkins html-jenkins:latest'
                }
            }
        }
    }
}
b0ac0641dc18ecffaf0cd0b1b1ce6d4faaf77e43

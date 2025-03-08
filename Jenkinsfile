pipeline {
    agent any

    environment {
        IMAGE_NAME = "my-jenkins-pipeline:latest"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/shamashaik19/jenkins-pipeline.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t $IMAGE_NAME .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 2002:80 $IMAGE_NAME'
                }
            }
        }
    }
}


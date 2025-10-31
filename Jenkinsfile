pipeline{
    agent any
    stages{
        stage('Checkout'){
            steps{
                git branch : 'main', url : 'https://github.com/santosh-3120/CI-CD-External.git'
            }
        }

        stage('Build'){
            steps{
                echo 'Compiling java file....'
                sh 'javac Hello.java'
            }
        }
        stage('Building Docker Image'){
            steps{
                echo 'Creating Docker Image...'
                sh 'docker build -t hello'
            }
        }
        stage('Deploy'){
            steps{
                echo 'Deploying new application in container...'
                sh 'docker rm -f hello-container || true'
                sh 'docker run --name hello-container hello'
            }
        }
    }
}
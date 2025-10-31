pipeline{
    Agent any
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
                sh 'docker build -t Hello'
            }
        }
        stage('Deploy'){
            steps{
                echo 'Deploying new application in container...'
                sh 'docker rm -f Hello-container || true'
                sh 'docker run --name Hello-container Hello'
            }
        }
    }
}
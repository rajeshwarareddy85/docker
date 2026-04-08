pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git branch: 'main',
                    url: 'YOUR_GIT_REPO_URL'
            }
        }

        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t static-website:1.0 .'
            }
        }

        stage('Docker Run') {
            steps {
                sh '''
                docker stop staticsite || true
                docker rm staticsite || true
                docker run -d -p 8081:80 --name staticsite static-website:1.0
                '''
            }
        }
    }
}

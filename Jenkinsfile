pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/Satkirat-Singh/docker-web-app.git'  // Replace with your repository URL
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-web-app .'
                }
            }
        }

        stage('Test Docker Container') {
            steps {
                script {
                    // Test the container
                    sh 'docker run -d -p 80:80 --name my-web-app-test my-web-app'
                    sh 'docker ps | grep my-web-app-test'
                }
            }
        }

        stage('Deploy Docker Container') {
            steps {
                script {
                    // Stop and remove the previous container
                    sh 'docker stop my-web-app || true'
                    sh 'docker rm my-web-app || true'
                    
                    // Run the new container
                    sh 'docker run -d -p 80:80 --name my-web-app my-web-app'
                }
            }
        }
    }

    post {
        always {
            script {
                // Clean up any resources
                sh 'docker rm -f my-web-app-test || true'
                sh 'docker image prune -f'
            }
        }
    }
}

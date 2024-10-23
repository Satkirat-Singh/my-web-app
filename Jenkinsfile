pipeline {
    agent any 

    stages {
        stage('Build') {
            steps {
                script {
                    // Windows command to clean and package the Maven project
                    bat 'mvn clean package'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    // Windows command to run Maven tests
                    bat 'mvn test'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // Windows command to run the JAR file
                    bat 'java -jar target\\my-web-app-1.0-SNAPSHOT.jar'
                }
            }
        }
    }
}

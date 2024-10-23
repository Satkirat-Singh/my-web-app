# My Web App

This project is a simple Java-based web application using Spring Boot. It serves multiple HTML pages and includes basic navigation.

## Project Structure

- `src/main/resources/static/`: Contains HTML, CSS, and JavaScript files.
- `src/main/java/com/mywebapp/`: Contains the main application class.
- `src/test/java/com/mywebapp/`: Contains unit tests.

## Running the Project

1. Build the project using Maven: `mvn clean package`
2. Run the application: `java -jar target/my-web-app-1.0-SNAPSHOT.jar`
3. Open your browser and go to `http://localhost:8080`.

## Jenkins CI/CD

- A Jenkinsfile is included for automating the build, test, and deploy process.

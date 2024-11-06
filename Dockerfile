# Use a base image with JDK
FROM openjdk:21-jdk-slim

WORKDIR /app

# Copy the JAR file from the Maven build into the container

COPY /target/my-app-1.0-SNAPSHOT.jar ./app/app.jar

# Specify the entrypoint to run the application
 ENTRYPOINT ["java", "-jar", "app/app.jar"]

#CMD ["java", "-cp", "app/app.jar", "com.mycompany.app.App"]

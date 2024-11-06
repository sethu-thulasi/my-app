# Use a base image with JDK
FROM openjdk:11-jre-slim

# Copy the JAR file from the Maven build into the container
COPY /target/my-app-1.0-SNAPSHOT.jar my-app-1.0-SNAPSHOT.jar

# Specify the entrypoint to run the application
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
# Use a Java runtime image as the base image
FROM registry.access.redhat.com/ubi8/openjdk-17

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY ./target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that your Spring Boot application is running on
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "app.jar"]


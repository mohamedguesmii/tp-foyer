# Use a base image with OpenJDK
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory to the working directory
COPY target/tp-foyer.jar /app/tp-foyer.jar

# Expose the application port (adjust if necessary)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "/app/tp-foyer.jar"]

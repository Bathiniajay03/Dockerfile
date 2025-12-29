# Use OpenJDK 17
FROM openjdk:17-jdk-slim

# Copy the built JAR into the container
COPY target/*.jar app.jar

# Set the port to Render's dynamic port
ENV PORT=8080

# Expose the port
EXPOSE 8080

# Run the app
ENTRYPOINT ["java","-jar","/app.jar"]

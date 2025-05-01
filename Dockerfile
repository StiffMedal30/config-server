# Use a minimal Java image
FROM openjdk:17-jdk-slim

# Install Git
RUN apt-get update && apt-get install -y git

# Set the working directory
WORKDIR /app

# Copy the built jar (make sure you build it first!)
COPY ./build/libs/config-server-*.jar app.jar

# Expose the port your app runs on (adjust as needed)
EXPOSE 7090

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]

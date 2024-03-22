# Build stage
FROM maven:latest AS build

# Set working directory
WORKDIR /myapp

# Copy the entire project directory into the container
COPY . .

# Run Maven build
RUN mvn clean package

# Run stage
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /myapp

# Copy the compiled application from the build stage
COPY --from=build /myapp/target/SGM-Entoprises-0.0.1-SNAPSHOT.war ./

# Expose port 8080
EXPOSE 8080

# Define the entry point to run the application
ENTRYPOINT ["java", "-jar", "SGM-Entoprises-0.0.1-SNAPSHOT.war"]
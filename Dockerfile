# Build stage
FROM maven:3.8.4-openjdk-17 AS build

WORKDIR /app

# Copy pom.xml and download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy source code and build the project
COPY src ./src
RUN mvn clean package -DskipTests

# Runtime stage
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the built JAR file from the build stage
COPY --from=build /app/target/email-auto-reply-0.0.1-SNAPSHOT.jar email-auto-reply.jar

# Expose the application port
EXPOSE 8080

# Define entry point
ENTRYPOINT ["java", "-jar", "email-auto-reply.jar"]

FROM openjdk:17-jdk-alpine
COPY swiftlogix-0.0.1-SNAPSHOT.jar /app/swiftlogix.jar
WORKDIR /app
CMD ["java", "-jar", "swiftlogix.jar"]
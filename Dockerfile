FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY target/spring-boot-web-0.0.1-SNAPSHOT.jar spring-boot-web-0.0.1.jar
ENTRYPOINT ["java", "-jar", "/app/spring-boot-web-0.0.1.jar"]


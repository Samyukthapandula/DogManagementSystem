FROM maven:3.8.2-jdk-11 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests


FROM openjdk:11-jdk-slim
COPY --from=build /target/DogmanagementSystem-0.0.1-SNAPSHOT.jar DogmanagementSystem.jar
CMD ["java", "-jar", "DogmanagementSystem.jar"]

FROM adoptopenjdk/openjdk11 AS builder
COPY pom.xml /tmp/
COPY src /tmp/src/
COPY .mvn /tmp/.mvn
COPY mvnw /tmp/mvnw
WORKDIR /tmp/
RUN ./mvnw clean install -DskipTests

FROM adoptopenjdk/openjdk11

EXPOSE 8080 8778 9779

RUN mkdir /app
COPY --from=builder /tmp/target/*.jar /app/app.jar

ENTRYPOINT ["java","-jar","/app/app.jar"]
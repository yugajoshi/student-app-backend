FROM maven:3.8.3-openjdk-17
COPY . /opt/
WORKDIR /opt
COPY application.properties /src/main/resources/
RUN mvn clean package
WORKDIR /opt/target
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "student-registration-backend-0.0.1-SNAPSHOT.jar"]

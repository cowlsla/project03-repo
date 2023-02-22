FROM adoptopenjdk/openjdk11
CMD ["./mvnw", "clean", "packahe"]
ARG JAR_FILE_PATH=target/spring-petclinic-2.7.3.jar
COPY ${JAR_FILE_PATH} spring-petclinic.jar
ENTRYPOINT ["java", "-jar", "spring-petclinic.jar"]

FROM eclipse-temurin:17-jre
WORKDIR /app
COPY target/*.jar app.jar
RUN rm -f /usr/bin/pebble
EXPOSE 8080
ENTRYPOINT ["java", "-Dspring.profiles.active=mysql", "-jar", "/app/app.jar"]

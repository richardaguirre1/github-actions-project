FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME /usr/src/app
WORKDIR $APP_HOME

# Argumento para la ruta del JAR
ARG JAR_FILE=target/*.jar

# Copiar el JAR compilado
COPY ${JAR_FILE} app.jar

CMD ["java", "-jar", "app.jar"]


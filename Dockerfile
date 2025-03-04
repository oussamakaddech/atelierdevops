FROM openjdk:8-jdk-alpine

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR de l'application dans le conteneur
COPY target/timesheet-devops-1.0.jar app.jar

# Exposer le port sur lequel l'application écoute
EXPOSE 8082

# Exécuter l'application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

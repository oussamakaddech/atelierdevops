# Utilisation de l'image OpenJDK 8 (vous pouvez aussi utiliser openjdk:11 si nécessaire)
FROM openjdk:8-jdk-alpine

# Exposer le port sur lequel l'application Spring Boot écoute (par défaut 8080 ou ajuster selon votre configuration)
EXPOSE 8082

# Ajouter le fichier .jar généré par Maven (après la compilation) à l'image Docker
ADD target/mon-application-spring-boot.jar mon-application-spring-boot.jar

# Définir l'entrée de l'application
ENTRYPOINT ["java", "-jar", "/mon-application-spring-boot.jar"]

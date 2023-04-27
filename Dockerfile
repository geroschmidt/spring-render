# Usa la imagen de Java 17
FROM openjdk:17-jdk-alpine

# Establece el directorio de trabajo en /app
WORKDIR /spring-render

# Copia el archivo build.gradle y los directorios src y gradle a /app
COPY build.gradle .
COPY src src
COPY gradle gradle

# Ejecuta Gradle para construir la aplicación
RUN ./gradlew build

# Copia el archivo .jar construido en la etapa anterior a /app
COPY build/libs/spring-render.jar spring-render.jar

# Expone el puerto 8080 en el contenedor
EXPOSE 8080

# Ejecuta la aplicación Spring Boot al iniciar el contenedor
CMD ["java", "-jar", "myapp.jar"]
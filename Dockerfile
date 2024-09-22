FROM openjdk:21

WORKDIR /app

COPY build/libs/DockerizeSpring-0.0.1.jar DockerizeSpring.jar

ENV PORT=8080 

EXPOSE $PORT 
# This is the port that the application will run on within the container it has nothing to do with the host/system ports

CMD ["java", "-jar", "DockerizeSpring.jar"]
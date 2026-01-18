FROM maven:3.9-eclipse-temurin-21

WORKDIR /app

COPY . /app/

COPY ./config /app/

RUN chmod +x /app/entrypoint.sh

EXPOSE 25565

ENTRYPOINT [ "java",  "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "-nogui" ]

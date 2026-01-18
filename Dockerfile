FROM eclipse-temurin:21-jre

WORKDIR /app

COPY server.jar /app/

COPY entrypoint.sh /app/

RUN chmod +x /app/entrypoint.sh

EXPOSE 25565

ENTRYPOINT [ "sh", "-c", "/app/entrypoint.sh" ]
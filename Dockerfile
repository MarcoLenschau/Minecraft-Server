FROM eclipse-temurin:21-jre

WORKDIR /app

COPY server.jar /app/

COPY entrypoint.sh /app/

RUN cat >> /app/server.properties <<'EOL'
white-list=${WHITELIST}
EOL

RUN cat >> /app/eula.txt <<'EOL'
eula=${EULA}
EOL

RUN chmod +x /app/entrypoint.sh

EXPOSE 25565

ENTRYPOINT [ "sh", "-c", "/app/entrypoint.sh" ]
FROM ubuntu:latest

RUN apt-get update \
	&& apt-get install -y openjdk-21-jre-headless curl

ENV URL="https://piston-data.mojang.com/v1/objects/64bb6d763bed0a9f1d632ec347938594144943ed/server.jar"

WORKDIR /app

COPY . /app/

COPY ./config /app/

RUN chmod +x /app/entrypoint.sh

RUN curl -o server.jar $URL

EXPOSE 25565

ENTRYPOINT [ "sh", "-c", "/app/entrypoint.sh" ]
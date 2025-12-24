FROM ubuntu:latest

RUN apt-get update \
	&& apt-get install -y openjdk-21-jre-headless curl

WORKDIR /app

RUN curl -o server.jar https://piston-data.mojang.com/v1/objects/64bb6d763bed0a9f1d632ec347938594144943ed/server.jar

RUN echo 'eula=true' > /app/eula.txt

EXPOSE 25565

ENTRYPOINT [ "java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar" ]
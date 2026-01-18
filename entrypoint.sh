#!/bin/sh
echo "eula=${EULA}" > /app/eula.txt
echo "white-list=${WHITELIST}" > /app/server.properties
java -jar server.jar whitelist add admin
java -jar server.jar op admin
java -Xmx1024M -Xms1024M -jar server.jar -nogui
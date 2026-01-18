#!/bin/sh
mv config/* /app/
java -jar server.jar whitelist add admin
java -jar server.jar op admin
java -Xmx1024M -Xms1024M -jar server.jar -nogui
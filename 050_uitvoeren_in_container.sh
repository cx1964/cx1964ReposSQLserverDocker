# File: 050_uitvoeren_in_container.sh
# Functie: Back on the docker container bash console, 
#          create a directory for the backup file and
#          move it in to that directory using the following commands

# Start in de container bash
docker exec -i -t sql1 /bin/bash

# uitvoeren in bash van bovenstaand commando
mkdir -p /var/opt/mssql/backup
mv ./AdventureWorks2017.bak /var/opt/mssql/backup/
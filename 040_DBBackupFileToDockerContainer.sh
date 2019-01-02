# File: DBBackupFileToDockerContainer.sh
# Functie: Copy the backup file from the host machine to docker container
# Opmerking: AdventureWorks2014.bak gedownload van
#            https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks
docker cp ~/Downloads/AdventureWorks2017.bak sql1:/AdventureWorks2017.bak
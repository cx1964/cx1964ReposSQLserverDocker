# filename: list_databases.sh
# functie: run sqlcmd 
sudo docker exec -it sql1 /opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P '<YourStrong!Passw0rd>' \
   -Q 'SELECT Name from sys.Databases'
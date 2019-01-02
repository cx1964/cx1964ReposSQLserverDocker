# filename: create_database.sh
# functie: 
sudo docker exec -it sql1 /opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P '<YourStrong!Passw0rd>' \
   -Q " 

USE [master];
GO
 
CREATE DATABASE [sql2017DB]
    ON PRIMARY
       (NAME = N'sql2017DB', FILENAME = N'/var/opt/mssql/sql2017DB.mdf')
    LOG ON
       (NAME = N'sql2017DB_log', FILENAME = N'/var/opt/mssql/sql2017DB_log.ldf')
GO
" 
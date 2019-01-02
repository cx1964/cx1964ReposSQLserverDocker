# file: 070_restore_db.sh
# Functie: restore database backup in sql server database in container mbv sqlcmd

# start sqlcmd in container
sqlcmd -S localhost \
  -U SA -P '<YourStrong!Passw0rd>' \
  -Q "
-- Restore database in sqlcmd met onderstaand command
RESTORE DATABASE AdventureWorks 
FROM DISK = '/var/opt/mssql/backup/AdventureWorks2017.bak' 
WITH MOVE 'AdventureWorks2017' TO '/var/opt/mssql/data/AdventureWorks2017_Data.mdf', 
MOVE 'AdventureWorks2017_Log' TO '/var/opt/mssql/data/AdventureWorks2017_Log.ldf' 
GO
"

# Gebruik onderstaande commando eventueel om de logische filenames van de database file en de log fil et bepalen
# voor het retore commando
#sqlcmd -S localhost \
#  -U SA -P '<YourStrong!Passw0rd>' \
#  -Q "
#-- Restore database in sqlcmd met onderstaand command
#RESTORE FILELISTONLY 
#FROM DISK = '/var/opt/mssql/backup/AdventureWorks2017.bak' 
#GO
#"

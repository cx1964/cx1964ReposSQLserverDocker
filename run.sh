# Filename: run.sh
# Functie: maak een werkende docker image met een restored Adventure database

echo "020" 
./020_create_database_docker_volume.sh
echo "030" 
./030_start_sqlserver_docker_image.sh
echo "040" 
./040_DBBackupFileToDockerContainer.sh
echo "050" 
./050_uitvoeren_in_container.sh
echo "060" 
./060_install_sqlcmd_en_restore_database.sh 
echo "070" 
./070_restore_db.sh
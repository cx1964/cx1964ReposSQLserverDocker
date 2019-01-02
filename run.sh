# Filename: run.sh
# Functie: maak een werkende docker image met een restored Adventure database

./020_create_database_docker_volume.sh
./030_start_sqlserver_docker_image.sh
./040_DBBackupFileToDockerContainer.sh
./050_uitvoeren_in_container.sh
./060_install_sqlcmd_en_restore_database.sh 
./070_restore_db.sh
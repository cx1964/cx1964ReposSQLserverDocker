# Filename: 060_install_sqlcmd_en_restore_database.sh
# Functie: Next step is to install sqlcmd to restore the database,
#          but to do that we would have to install couple of packages
#          and make some minor configuration changes.
#          Run the following commands to install mssql-tools and unixodbc-dev
# Bron: https://www.progress.com/tutorials/odbc/connect-to-sql-server-linux-on-docker-via-odbc-driver

# Run this script on bash commandline in container

# check Ubuntu Linux version in Container
cat /etc/lsb-release

# check Ubuntu repositories
cat /etc/apt/sources.list

# Backup repository list
cp /etc/apt/sources.list /etc/apt/sources.list.backup

# Add Repository voor curl
echo "deb http://archive.ubuntu.com/ubuntu/ xenial main restricted" >> /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ xenial universe"  >> /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ xenial-updates universe" >> /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ xenial multiverse" >> /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ xenial-updates multiverse" >> /etc/apt/sources.list
echo "deb http://security.ubuntu.com/ubuntu xenial-security main restricted" >> /etc/apt/sources.list
echo "deb http://security.ubuntu.com/ubuntu xenial-security universe" >> /etc/apt/sources.list
echo "deb http://security.ubuntu.com/ubuntu xenial-security multiverse" >> /etc/apt/sources.list

apt-get update
apt-get install curl
apt-get install apt-transport-https
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | tee /etc/apt/sources.list.d/msprod.list

apt-get update
apt-get install mssql-tools unixodbc-dev
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
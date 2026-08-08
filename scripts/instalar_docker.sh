# Dependencias

sudo apt update
sudo apt install -y ca-certificates curl gnupg

# Agrego la clave pública de docker

sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(. /etc/os-release && echo $VERSION_CODENAME) stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# actualizo e instalo

sudo apt update

sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Verificar instalación

docker --version

# Hola mundo

sudo docker run hello-world



#########################

# Bajamos sql server

sudo docker pull mcr.microsoft.com/mssql/server:2019-latest

# Configuramos sql server

sudo docker run -d --name sqlserver -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=ContraseñaSegura123!" -p 1433:1433 mcr.microsoft.com/mssql/server:2019-latest

# Descargamos dbeaver e instalamos

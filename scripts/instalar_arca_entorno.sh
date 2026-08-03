#!/bin/bash

set -e

echo "=== Instalando dependencias ==="

sudo apt update
sudo apt install -y \
    ca-certificates \
    curl \
    gnupg \
    flatpak


echo "=== Instalando Docker ==="

sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/debian/gpg | \
sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/debian \
$(. /etc/os-release && echo $VERSION_CODENAME) stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-compose-plugin


sudo usermod -aG docker $USER


echo "=== Creando SQL Server ==="

mkdir -p ~/arca/entorno
cd ~/arca/entorno


cat > docker-compose.yml <<'EOF'
services:

  sqlserver:
    image: mcr.microsoft.com/mssql/server:2019-latest
    container_name: arca_sqlserver

    environment:
      ACCEPT_EULA: "Y"
      MSSQL_SA_PASSWORD: "ArcaPassword2026!"

    ports:
      - "1433:1433"

    volumes:
      - sqlserver_data:/var/opt/mssql

    restart: unless-stopped


volumes:
  sqlserver_data:
EOF


docker compose up -d


echo "=== Instalando DBeaver ==="

flatpak install -y flathub io.dbeaver.DBeaverCommunity


echo ""
echo "=============================="
echo "Listo owo"
echo ""
echo "SQL Server:"
echo "Host: localhost"
echo "Puerto: 1433"
echo "Usuario: sa"
echo "Password: ArcaPassword2026!"
echo ""
echo "Reiniciá sesión para usar Docker sin sudo."
echo "=============================="

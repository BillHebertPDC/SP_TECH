[#!/bin/bash

# Definições
ALUNO_USER="aluno"  # Nome do usuário destino
ALUNO_HOME="/home/$ALUNO_USER"
APP_NAME="Arduino IDE"
APP_IMAGE_SRC="./arduino-ide_latest_Linux_64bit.AppImage"  # Arquivo já baixado na mesma pasta do script
ICON_SRC="./Arduino_Logo.svg"  # Ícone já baixado na mesma pasta do script
APP_DIR="$ALUNO_HOME/Applications"
ICON_DIR="$ALUNO_HOME/.local/share/icons"
APP_IMAGE_PATH="$APP_DIR/arduino-ide_latest_Linux_64bit.AppImage"
ICON_PATH="$ICON_DIR/Arduino_Logo.svg"
DESKTOP_FILE="$ALUNO_HOME/.local/share/applications/arduino-ide.desktop"

# Criar diretórios se não existirem
echo "Criando diretórios para o usuário $ALUNO_USER..."
sudo -u "$ALUNO_USER" mkdir -p "$APP_DIR" "$ICON_DIR" "$ALUNO_HOME/.local/share/applications"

# Copiar os arquivos para o diretório do usuário aluno
echo "Copiando arquivos..."
sudo cp "$APP_IMAGE_SRC" "$APP_IMAGE_PATH"
sudo cp "$ICON_SRC" "$ICON_PATH"

# Garantir permissões corretas
sudo chmod +x "$APP_IMAGE_PATH"
sudo chown -R "$ALUNO_USER":"$ALUNO_USER" "$APP_IMAGE_PATH" "$ICON_PATH"

# Criar o atalho no desktop
echo "Criando atalho..."
sudo -u "$ALUNO_USER" bash -c "cat <<EOF > \"$DESKTOP_FILE\"
[Desktop Entry]
Type=Application
Name=Arduino IDE
Exec=$APP_IMAGE_PATH
Icon=$ICON_PATH
Terminal=false
Categories=Development;Electronics;
EOF"

# Garantir que o atalho pertence ao usuário aluno
sudo chown "$ALUNO_USER":"$ALUNO_USER" "$DESKTOP_FILE"
sudo chmod +x "$DESKTOP_FILE"

# Adicionar o usuário aluno ao grupo dialout e plugdev para acesso à porta serial
echo "Configurando permissões para acesso à porta serial..."
sudo usermod -aG dialout "$ALUNO_USER"
sudo usermod -aG plugdev "$ALUNO_USER"

echo "Instalação concluída! O usuário '$ALUNO_USER' precisa fazer logout ou reiniciar para que as permissões tenham efeito."


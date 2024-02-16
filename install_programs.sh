#!/bin/zsh

# Dar permisos con el siguiente comando: chmod +x install_programs.sh

programas=(
    "git"
    "nvm"
)

programas_con_cask=(
    "docker"
    "enpass"
    "google-chrome"
    "brave-browser"
    "mongodb-compass"
    "postman"
    "reactotron"
    "slack"
    "spotify"
    "visual-studio-code"
)

instalar_programa() {
    programa="$1"
    echo "Instalando $programa..."
    brew install $programa
}

instalar_programa_con_cask() {
    programa="$1"
    echo "Instalando $programa..."
    brew install --cask $programa
}

for programa in "${programas[@]}"; do
    instalar_programa "$programa"
done

for programa in "${programas_con_cask[@]}"; do
    instalar_programa_con_cask "$programa"
done

echo "Instalación completada."
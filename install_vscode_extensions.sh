#!/bin/bash

# Dar permisos con el siguiente comando: chmod +x install_vscode_extensions.sh

extensiones=(
    "ms-azuretools.vscode-docker"
    "rodrigovallades.es7-react-js-snippets"
    "dbaeumer.vscode-eslint"
    "GitHub.vscode-github-actions"
    "GitHub.copilot"
    "GitHub.copilot-chat"
    "eamodio.gitlens"
    "ms-vscode.vscode-typescript-next"
    "firsttris.vscode-jest-runner"
    "lllllllqw.jsdoc"
    "ms-vscode.live-server"
    "yzhang.markdown-all-in-one"
    "PKief.material-icon-theme"
    "fabiospampinato.vscode-monokai-night"
    "esbenp.prettier-vscode"
    "msjsdiag.vscode-react-native"
    "MS-CEINTL.vscode-language-pack-es"
    "wayou.vscode-todo-highlight"
    "DotJoshJohnson.xml"
)

instalar_extension() {
    extension="$1"
    echo "Instalando extensión $extension..."
    code --install-extension $extension
}

for extension in "${extensiones[@]}"; do
    instalar_extension "$extension"
done

echo "Instalación de extensiones completada."
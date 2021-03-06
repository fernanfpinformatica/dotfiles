#!/usr/bin/env bash

main() {
    # Install all needed VS code extensions.
    install_extensions
    # Add custom user settings to VS code.
    configure_settings
}

function install_extensions() {
    code -v > /dev/null
    if [[ $? -eq 0 ]];then
        # Typescript
        code --install-extension loiane.ts-extension-pack
        
        # Keybindings
        code --install-extension k--kato.intellij-idea-keybindings
        
        # Utils
        code --install-extension streetsidesoftware.code-spell-checker
        code --install-extension cssho.vscode-svgviewer
        code --install-extension donjayamanne.githistory
        code --install-extension eamodio.gitlens
        code --install-extension zainchen.json
        code --install-extension pflannery.vscode-versionlens
        code --install-extension yzhang.markdown-all-in-one
        
        # Theme
        code --install-extension dracula-theme.theme-dracula
        code --install-extension pkief.material-icon-theme
        fi
}

function configure_settings() {
    cp ./settings.json $HOME/Library/Application\ Support/Code/User/settings.json
}

main "$@"

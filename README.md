
# Dotfiles &middot; [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/your/your-project/blob/master/LICENSE)

Personal dotfiles to sync MacOS configurations across macbooks.

## Installing / Getting started

```shell
    curl --silent https://raw.githubusercontent.com/fernanfpinformatica/dotfiles/master/bootstrap.sh | bash
```

## Post installation steps
1. Install fish plugins using the provided function on install_fish_plugins.fish. Execute this command into your fish terminal:
   ```shell
    install_fish_plugins
    ```
2. Install desired NodeJS version using NVM. For instance, you can install the current NodeJS LTS version using this command:
    ```shell
    nvm install 'lts/*'
    ```
3. In order to make it work [fzf keybindings and fuzzy completion](https://github.com/junegunn/fzf#using-homebrew), you have to execute the following command into your fish terminal:
    ```shell
    /usr/local/opt/fzf/install
    ```

## Future work
- Sync Git configuration using predefined .gitconfig files
- Add functions to integrate [fzf](https://github.com/junegunn/fzf) with Git, VSCode, LastPass and more: [fzf fish examples](https://github.com/junegunn/fzf/wiki/Examples-(fish))
- Disable chime startup sound. Configuring ```com.apple.loginwindow LoginHook``` and ```com.apple.loginwindow LogoutHook``` does not work. [Try this](https://www.idownloadblog.com/2020/02/24/enable-mac-startup-chime-tutorial/).
# update vscode installed extension list
# code --list-extensions > extensions.txt

if [ -e ~/Library/Application\ Support/Code/User ]; then
    cd ~/Library/Application\ Support/Code/User

    ln -is ~/.dotfiles/vscode/settings.json
    ln -is ~/.dotfiles/vscode/keybindings.json

    for extension in `cat ~/.dotfiles/vscode/extensions.txt`; do
        code --install-extension $extension
    done
fi

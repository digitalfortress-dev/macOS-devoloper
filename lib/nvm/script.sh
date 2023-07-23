install_npm() {
    if ! command -v npm &> /dev/null; then
        echo "npm not found. Installing npm..."
        brew install nvm
        echo "npm installed successfully."

        ## Add the following to your shell profile e.g. ~/.profile or ~/.zshrc:
        export NVM_DIR="$HOME/.nvm"
          [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
          [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

        ## Check version NVM ###
        nvm -v
    else
        echo "npm is already installed."
    fi
}

install_npm
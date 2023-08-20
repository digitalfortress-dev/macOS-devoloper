install_google_chrome() {
    if brew list --cask google-chrome &> /dev/null; then
        echo "Google Chrome is already installed."
    else
        echo "Google Chrome not found. Installing Google Chrome..."
        brew install --cask google-chrome
        echo "Google Chrome installed successfully."
    fi
}

install_google_chrome

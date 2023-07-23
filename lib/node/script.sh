install_node() {
    if ! command -v node &> /dev/null; then
        echo "node not found. Installing node..."
        brew install node
        echo "node installed successfully."
    else
        echo "node is already installed."
    fi

    ## Check npm installed ### --> So when install brew node on MacOs will installed npm already
    if ! command -v npm &> /dev/null; then
        brew install npm
        echo "npm installed successfully."
    else
        echo "npm is already installed."
    fi
}

install_node
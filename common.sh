install_homebrew() {
    if ! command -v brew &> /dev/null; then
        echo "Homebrew not found. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo "Homebrew installed successfully."
    else
        echo "Homebrew is already installed."
    fi
}

# Running install git
install_git() {
    if ! command -v git &> /dev/null; then
        echo "Git not found. Please install Git before proceeding."
        exit 1
    else
        echo "Git is already installed."
    fi
}

install_homebrew
install_git
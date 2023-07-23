install_pnpm() {
    if ! command -v pnpm &> /dev/null; then
        echo "pnpm not found. Installing Homebrew..."
        npm install -g pnpm
        echo "pnpm installed successfully."
    else
        echo "pnpm is already installed."
    fi
}

install_pnpm
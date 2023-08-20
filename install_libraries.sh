# Running install homebrew
install_homebrew() {
    if ! command -v brew &> /dev/null; then
        echo "Homebrew not found. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo "Homebrew installed successfully."
    else
        echo "Homebrew is already installed."
    fi
}

install_homebrew
#############################

# Running install git
install_git() {
    if ! command -v git &> /dev/null; then
        echo "Git not found. Please install Git before proceeding."
        brew install git
        exit 1
    else
        echo "Git is already installed."
    fi
}

# Check if Git is installed
install_git
#####################

# # Check if the repository already exists, if not, clone it
# if [ ! -d "macOS-devoloper" ]; then
#     git clone https://github.com/digitalfortress-dev/macOS-devoloper.git
# else
#     echo "macOS-devoloper directory already exists. Skipping git clone."
# fi

# # Change directory to the repository folder
# cd macOS-devoloper

### Chmod Permission to Install Lib
chmod +x common.sh
chmod +x role/BACKEND/*.sh
chmod +x role/DESIGNER/*.sh
chmod +x role/FRONTEND/*.sh
chmod +x role/QA/*.sh
chmod +x lib/*/*.sh

# Install lib common
./common.sh

# Check the command-line agrument and execute the corresponding library install

# Check the command-line argument and execute the corresponding library installation function
if [ $# -ne 1 ]; then
    echo "Usage: $0 <environment>"
    exit 1
fi

case "$1" in
    "BE")
        ./role/BACKEND/install_backend_libraries.sh
        ;;
    "FE")
        ./role/FRONTEND/install_frontend_libraries.sh
        ;;
    "UI/UX")
        ./role/DESIGNER/install_designer_libraries.sh
        ;;
    "QA")
        ./role/QA/install_qa_libraries.sh
        ;;
    *)
        echo "Invalid environment. Available options: BE, QA, FE, UI/UX"
        exit 1
        ;;
esac

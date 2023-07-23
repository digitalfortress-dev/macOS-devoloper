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
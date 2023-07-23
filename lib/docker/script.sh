install_docker() {
    if command -v docker &> /dev/null; then
        echo "docker not found. Installing docker..."
        echo "-----------------------------------------"
        echo "Downloading Docker Desktop..."
        curl -o Docker.dmg "https://download.docker.com/mac/stable/Docker.dmg"

        echo "-----------------------------------------"
        echo "Mounting Docker.dmg..."
        hdiutil attach Docker.dmg

        echo "---------------------------------------"
        cp -R /Volumes/Docker/Docker.app /Applications

        echo "Unmounting Docker.dmg..."
        hdiutil detach /Volumes/Docker

        echo "Cleaning up..."
        rm Docker.dmg
        
        echo "Docker Desktop installed successfully."
    else
        echo "docker is already installed."
    fi
}

install_docker
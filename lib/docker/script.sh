install_docker() {
    if command -v docker &> /dev/null; then

        # Specify the folder where you want to download the Docker Desktop DMG
        download_folder="$HOME/Downloads"

        echo "docker not found. Installing docker..."
        echo "-----------------------------------------"
        echo "Downloading Docker Desktop..."
        curl -o "$download_folder/Docker.dmg" "https://download.docker.com/mac/stable/Docker.dmg"

        # Check if the download was successful
        if [ $? -ne 0 ]; then
            echo "Failed to download Docker Desktop."
            exit 1
        fi

        echo "-----------------------------------------"
        # Mount Docker.dmg
        echo "Mounting Docker.dmg..."
        hdiutil attach "$download_folder/Docker.dmg"

        echo "---------------------------------------"
        echo "Copying Docker.app to Applications folder..."
        cp -R "/Volumes/Docker/Docker.app" "/Applications"

        echo "Unmounting Docker.dmg..."
        hdiutil detach /Volumes/Docker

        # # Clean up
        # echo "Cleaning up..."
        # rm "$download_folder/Docker.dmg"
        
        echo "Docker Desktop installed successfully."
    else
        echo "docker is already installed."
    fi
}

install_docker
install_aws_cli() {
    if ! command -v aws &> /dev/null; then
        echo "AWS CLI not found. Installing AWS CLI..."
        brew install awscli
        echo "AWS CLI installed successfully."
    else
        echo "AWS CLI is already installed."
    fi
}

install_aws_cli
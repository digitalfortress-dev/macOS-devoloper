#!/bin/bash

# Function to install libraries for the BE environment
install_backend_libraries() {
    echo "Installing libraries for the BE environment..."

    ### Install Slack ###
    ./lib/slack/script.sh

    ### Install Google chrome ###
    ./lib/google-chrome/script.sh

    ### Install lib npm ###
    ./lib/node/script.sh
    #### END install lib npm ####

    ### Install lib pnpm ##
    ./lib/pnpm/script.sh
    ######## END install lib pnpm ##########

    ### Install docker ###
    # ./lib/docker/script.sh
    ##### END install docker #########

    #### Install Aws CLI ###
    ./lib/aws-cli/script.sh
    ##### END install AWS CLI #########

    #### Install pycharm CE ###
    ./lib/pycharm/script.sh
    ##### END install pycharm CE #########

    echo "BE environment libraries installed."
}

# Call the function to install BE libraries
install_backend_libraries

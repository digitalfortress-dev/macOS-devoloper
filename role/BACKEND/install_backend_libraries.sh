#!/bin/bash

# Function to install libraries for the BE environment
install_backend_libraries() {
    echo "Installing libraries for the BE environment..."

    ### Install lib npm ###
    ./lib/node/script.sh
    #### END install lib npm ####

    ### Install lib pnpm ##
    ./lib/pnpm/script.sh
    ######## END install lib pnpm ##########

    ### Install docker ###
    ./lib/docker/script.sh
    ##### END install docker #########

    echo "BE environment libraries installed."
}

# Call the function to install BE libraries
install_backend_libraries

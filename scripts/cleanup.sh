#! /bin/bash

# Check if node is present or not on the system

if ! command -v node &> /dev/null; then
    echo "Node is not on the system. Installing the latest version of node..."
    sudo snap install node --classic
fi

if command -v node &> /dev/null; then
    echo "Node is installed."

    # Checking if /var/www/demo_react exists
    if [-d "/var/www/demo_react" ]; then
        echo "Removing /var/www/demo_react folder ..."
        sudo rm -rf /var/www/demo_react
    else
        echo "/var/www/demo_react folder not found."
    fi
fi
#!/bin/bash

# Script 2: FOSS Package Inspector

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "----------------------------------------"

# Check if package is installed (works on most systems)
if command -v $PACKAGE &> /dev/null; then
    echo "$PACKAGE is installed."

    # Show version
    VERSION=$($PACKAGE --version)
    echo "Version Info: $VERSION"

    # Try getting package details (for Debian-based systems)
    if command -v dpkg &> /dev/null; then
        dpkg -l | grep $PACKAGE
    fi

else
    echo "$PACKAGE is NOT installed."
fi

echo "----------------------------------------"

# Case statement for philosophy note
case $PACKAGE in
    git)
        echo "Git: a distributed version control system that empowers developers with freedom and collaboration."
        ;;
    vlc)
        echo "VLC: a media player that supports almost every format, built by open-source contributors."
        ;;
    firefox)
        echo "Firefox: a browser that promotes privacy and an open web."
        ;;
    apache2|httpd)
        echo "Apache: the web server that helped build the modern internet."
        ;;
    *)
        echo "Open-source software: built by communities, shared with the world."
        ;;
esac

echo "----------------------------------------"

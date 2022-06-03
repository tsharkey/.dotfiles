#!/bin/bash

set -e

currentVersion=$(sw_vers -productVersion)

echo "Checking os version..."

# ensure macos 11.4 or greater
if [[ $currentVersion < $REQUIRED_OS_VERSION ]]; then
    echo "macOS version $REQUIRED_OS_VERSION or greater is required. Would you like to update now? (y/n)"
    read -r response
    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
        echo "Updating macOS to latest version..."
        softwareupdate -i -a
    fi
else
    echo "macOS version $REQUIRED_OS_VERSION or greater is required"
    exit 1
fi

echo "macOS version $currentVersion >= required version $REQUIRED_OS_VERSION"

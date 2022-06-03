#!/bin/bash

set -e

echo "Checking requirements..."

sh ./ensure-macos-version.sh

echo "Installing xcode command line tools..."
xcode-select --install

sh ./ensure-omz.sh

sh ./ensure-brew.sh







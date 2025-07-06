#!/bin/bash

# Exit if anything fails
set -e

# Download and extract Quarto to local directory
curl -L -o quarto.tar.gz https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz
tar -xzf quarto.tar.gz

# Add Quarto to the PATH (local install)
export PATH=$PWD/quarto-${QUARTO_VERSION}/bin:$PATH

# Confirm installation
quarto --version

# Run Quarto render
quarto render
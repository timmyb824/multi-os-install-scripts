#!/bin/bash
set -e

# Usage: ./upgrade_nodejs.sh 24
VERSION=${1:?Usage: $0 <node-major-version>}

curl -fsSL https://deb.nodesource.com/setup_${VERSION}.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Installed: $(node --version)"

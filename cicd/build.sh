#!/bin/bash
set -e
echo "Starting build process..."
cd src
make
make install
cd ..
echo "Build completed successfully"

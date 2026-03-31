#!/bin/bash
set -e
echo "Starting build process..."
make
make install
cd ..
echo "Build completed successfully"

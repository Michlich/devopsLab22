#!/bin/bash
set -e
VERSION="1.0"
PACKAGE_NAME="programm"
echo "Creating .deb package..."
mkdir -p build/$PACKAGE_NAME-$VERSION
cp -r DEBIAN usr build/$PACKAGE_NAME-$VERSION/
dpkg-deb --build build/$PACKAGE_NAME-$VERSION
mv build/$PACKAGE_NAME-$VERSION.deb .
echo "Package $PACKAGE_NAME-$VERSION.deb created successfully"

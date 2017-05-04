#!/bin/sh

echo "Installing build dependencies"
apt-get update
apt-get install -y build-essential devscripts debhelper

echo "Installing dependencies"
apt-get install -y python-dev doxygen graphviz

echo "Generating package"
debuild binary

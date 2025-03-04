#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get upgrdae -y
grep -v '^#' ./omnetpp-toolbox.packages | xargs apt-get install -y 
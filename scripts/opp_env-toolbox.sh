#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get upgrade -y
grep -v '^#' ./opp_env-toolbox.packages | xargs apt-get install -y --no-install-recommends
apt-get clean
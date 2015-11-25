#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update
apt-get -y dist-upgrade

apt-get -y install curl htop git vim-nox

# You can install anything you need here.

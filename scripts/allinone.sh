#!/bin/bash

sudo apt-get -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get -y install ansible

curl -sL quickstart.midonet.org | sudo bash

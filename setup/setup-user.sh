#!/bin/bash

# Download .bashrc
curl -s -o $HOME/.bashrc https://codeberg.org/resingm/bashrc/raw/branch/master/bashrc

# Configure SSH for new user
mkdir $HOME/.ssh
chmod 700 $HOME/.ssh
touch $HOME/.ssh/authorized_keys
chmod 600 $HOME/.ssh/authorized_keys

# Add newpangea.nl public key
echo ""
echo "  SSH"
echo "================================"
echo "Please enter a public key for the new user $user"
read -p "SSH Public Key: " ssh_pub_key
echo $ssh_pub_key >> $HOME/.ssh/authorized_keys


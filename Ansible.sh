#!/bin/bash

# Update the system package list
echo "Updating package list..."
sudo apt update -y

# Install software-properties-common for managing repositories
echo "Installing software-properties-common..."
sudo apt install -y software-properties-common

# Add the Ansible PPA (Personal Package Archive) repository
echo "Adding Ansible PPA..."
sudo add-apt-repository --yes ppa:ansible/ansible

# Update the package list again after adding the PPA
echo "Updating package list again..."
sudo apt update -y

# Install Ansible
echo "Installing Ansible..."
sudo apt install -y ansible

# Verify Ansible installation
echo "Verifying Ansible installation..."
ansible --version

# Display success message
echo "Ansible has been successfully installed!"

#!/bin/bash

echo "Updating and installing packages with Zypper..."
sudo zypper ref
sudo zypper in -y neovim i3 tmux zsh helm gcc gcc-c++ npm i3status

# Go
echo "Installing Go and related tools..."
sudo zypper in -y go
PATH=$PATH:/home/$USER/go/bin
go install golang.org/x/tools/gopls

# Kubectl
echo "Installing kubernetes stuff: kubectl, helm, k3s, k3d..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client

# Configure Zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # will prompt the user
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cp ./zsh/.zshrc /home/$USER/.zshrc

# Configure i3wm


# Configure nvim
echo "Installing nvim-packer..."
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

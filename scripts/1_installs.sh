#!/bin/bash

echo "Updating and installing packages with Zypper..."
sudo zypper ref
sudo zypper in -y neovim i3 tmux zsh helm gcc gcc-c++ npm i3status openconnect \
    opi scrot arandr ripgrep aws-cli libffi-devel python3-devel libopenssl-devel \
    ack docker flameshot
# Azure cli from the SUSE repos fails -> install with Microsoft's script
curl -L https://aka.ms/InstallAzureCli | bash

# Go
echo "Installing Go and related tools..."
sudo zypper in -y go
PATH=$PATH:/home/$USER/go/bin
go install golang.org/x/tools/gopls

# kubernets
echo "Installing kubernetes stuff: kubectl, helm, k3s, k3d..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client
echo "Installing k3s"
curl -sfL https://get.k3s.io | sh -
echo "Installing k3d"
wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

# Configure Zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # will prompt the user
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cp ./zsh/.zshrc /home/$USER/.zshrc

# Configure i3wm
echo "Installing volumeicon..."
sudo zypper addrepo https://download.opensuse.org/repositories/home:AndnoVember:windowmanagers/openSUSE_Tumbleweed/home:AndnoVember:windowmanagers.repo
sudo zypper ref
sudo zypper install volumeicon

# Configure nvim
echo "Installing nvim-packer..."
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#! /bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -z "${SCRIPT_DIR}" ]; then
    exit 1
fi 

echo "Running setup.sh at $SCRIPT_DIR"

echo "Installing oh-my-zsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Intalling alacritty..."

if [ ! -d "~/Applications/Alacritty.app" ]; then
    brew install --cask alacritty
fi

brew install font-hack-nerd-font

echo "Creating alacritty config directory..."
mkdir -p ~/.config/alacritty
echo "Creating oh-my-posh config directory..."
mkdir -p ~/.config/oh-my-posh

cp ./terminal/alacritty/alacritty.toml ~/.config/alacritty
cp ./prompt/oh-my-posh/zen.toml ~/.config/oh-my-posh

echo "Copying p10k.zsh..."
cp ./prompt/p10k/p10k.zsh ~/

echo "Replacing .zshrc"
cp ./shell/.zshrc ~/.zshrc
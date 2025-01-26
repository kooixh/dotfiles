#! /bin/bash


SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -z "${SCRIPT_DIR}" ]; then
    exit 1
fi 


echo "Running setup.sh at $SCRIPT_DIR"

echo "Creating alacritty config directory"
mkdir -p ~/.config/alacritty
echo "Creating oh-my-posh config directory"
mkdir -p ~/.config/oh-my-posh


cp ./.config/alacritty/alacritty.toml ~/.config/alacritty
cp ./.config/oh-my-posh/zen.toml ~/.config/oh-my-posh


cp ./.zshrc ~/.zshrc



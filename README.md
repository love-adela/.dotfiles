# .dotfiles
 🗄  My dotfiles

Import or initialize secrets:
   SSH private keys

# zsh
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
ln -sf ~/.dotfiles/.zshrc ~

# ssh
mkdir -p ~/.ssh
chmod 700 ~/.ssh
ln -sf ~/.dotfiles/.ssh/config ~/.ssh
cp ~/.dotfiles/.ssh/config.local ~/.ssh

# .dotfiles
 🗄  My dotfiles

Make Symbolic Link to your local directory

## ssh
Import or initialize secrets: SSH private keys
`mkdir -p ~/.ssh`
`chmod 700 ~/.ssh`
`ln -sf ~/.dotfiles/.ssh/config.local ~/.ssh/config.local`

## zsh
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
ln -sf ~/.dotfiles/.zshrc ~

When zsh setup is complet, execute `exec zsh`


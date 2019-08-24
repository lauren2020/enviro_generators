#!/bin/sh
echo "Setting up vColdPizza enviorment..."

###### TODO: Check if each is already installed

# zsh
# https://github.com/robbyrussell/oh-my-zsh
zshInstalled=0
if [ $zshInstalled -eq 1 ]
then
echo "Installing zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
echo "zsh already installed. Skipping..."
fi

# fzf
# https://github.com/junegunn/fzf
fzfInstalled=0
if [ $fzfInstalled -eq 1 ]
then
echo "Installing fzf..."
$(brew --prefix)/opt/fzf/install
else
echo "fzf already installed. Skipping..."
fi

# scm_breeze
# https://github.com/scmbreeze/scm_breeze
scmBreezeInstalled=0
if [ $scmBreezeInstalled -eq 1 ]
then
echo "Installing scm_breeze..."
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
source ~/.zshrc
else
echo "scm_breeze already installed. Skipping"
fi

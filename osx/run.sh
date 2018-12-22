#!/bin/sh

HOST=10.0.2.2
USR=xtt

cd ~

# Install basic packages for building
echo "Install Command Line Tool"
xcode-select --install

# Install Homebrew
echo "Install homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Install zsh and oh-my-zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Mount shared folder
echo "Mounting ./repo"
mkdir repo
echo "
function mtrepo() {
    mount_smbfs //$USR@$HOST/Users/$USR/Repo ./repo
}
function umtrepo() {
    umount ./repo
}
" >> ~/.zshrc

echo "Mounting ./org"
mkdir org
echo "
function mtorg() {
    mount_smbfs //$USR@$HOST/Users/$USR/Dropbox/org ./org
}
function umtorg() {
    umount ./org
}
" >> ~/.zshrc

# Install emacs
brew cask install emacs
rm -f ~/.emacs


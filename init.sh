#! /usr/bin/env bash

#sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
#sudo cp apt-sources.list /etc/apt/sources.list

sudo apt-get update

sudo apt-get install -y git vim zsh tmux python-pip ctags autojump
sudo apt-get install -y build-essential cmake libssl-dev pkg-config libtool autoconf
sudo apt-get install -y libreadline-dev 
sudo apt-get install -y python-dev

# oh-my-zsh
curl -L http://install.ohmyz.sh | sh

cp gitconfig ~/.gitconfig
cp gitignore_global ~/.gitignore_global
cp tmux.conf ~/.tmux.conf
cp vimrc ~/.vimrc
#cp zshrc ~/.zshrc

# utils

# TODO powerline not work
#pip install --user git+git://github.com/Lokaltog/powerline
#ln -s {path_to_powerline}/scripts/powerline ~/.local/bin
#cp /home/vagrant/.local/lib/python2.7/site-packages/powerline/bindings/vim/plugin
#cp -r {path_to_powerline}/bindings/vim/plugin ~/.vim/

# for python
#pip install --user flake8
#pip install --user ipython

mkdir -p ~/.local/bin

# vim
## vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## plugins
vim +PluginInstall +qall

## templates
cd ~/.vim/bundle
if [ ! -d "vim-template" ]; then
    git clone git://github.com/aperezdc/vim-template.git
fi

## YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
# ./install.py --clang-completer
./install.py


## TODO https://github.com/zsh-users/zsh-autosuggestions

#! /usr/bin/env bash

sudo apt-get install -y git vim zsh tmux python-pip ctags autojump
sudo apt-get install -y build-essential cmake
sudo apt-get install -y python-dev

# oh-my-zsh
curl -L http://install.ohmyz.sh | sh

cp gitconfig ~/.gitconfig
cp gitignore_global ~/.gitignore_global
cp tmux.conf ~/.tmux.conf
cp vimrc ~/.vimrc
cp zshrc ~/.zshrc

# utils
pip install --user git+git://github.com/Lokaltog/powerline
pip install --user flake8
ln -s {path_to_powerline}/scripts/powerline ~/.local/bin
#cp /home/vagrant/.local/lib/python2.7/site-packages/powerline/bindings/vim/plugin
cp -r {path_to_powerline}/bindings/vim/plugin ~/.vim/

# vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# plugins
vim +PluginInstall +qall

# templates
cd ~/.vim/bundle
git clone git://github.com/aperezdc/vim-template.git

# YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

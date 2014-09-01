#! /usr/bin/env bash

sudo apt-get install -y git vim zsh tmux python-pip ctags autojump
curl -L http://install.ohmyz.sh | sh

# oh-my-zsh
curl -L http://install.ohmyz.sh | sh

cp .gitconfig ~/
cp .gitignore_global ~/
cp .tmux.conf ~/
cp .vimrc ~/
cp .zshrc ~/

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

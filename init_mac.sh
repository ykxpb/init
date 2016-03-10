#! /usr/bin/env bash

sudo easy_install pip

# oh my zsh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install cmake

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


cp gitconfig ~/.gitconfig
cp gitignore_global ~/.gitignore_global
cp tmux.conf ~/.tmux.conf
cp vimrc ~/.vimrc
cp zshrc ~/.zshrc

# utils
pip install --user git+git://github.com/Lokaltog/powerline
pip install --user flake8
pip install --user ipython

mkdir -p ~/.local/bin
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
if [ ! -d "vim-template" ]; then
    git clone git://github.com/aperezdc/vim-template.git
fi

# YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
# ./install.py --clang-completer
./install.py

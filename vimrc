
" ================================================= 
" vundle required
set nocompatible
filetype off
filetype plugin indent on
let mapleader = ","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'


Plugin 'Valloric/YouCompleteMe'

" rust lang
" Plugin 'rust-lang/rust.vim'

" Python
Plugin 'python.vim'
Plugin 'Python-Syntax'
Plugin 'hynek/vim-python-pep8-indent'

" Clang
"Plugin 'LucHermitte/vim-clang'
"Plugin 'vim-scripts/c.vim'
"Plugin 'Rip-Rip/clang_complete'
"Plugin 'LucHermitte/clang_indexer'
"Plugin 'lh-vim-lib'

Plugin 'fatih/vim-go'

" git
Plugin 'airblade/vim-gitgutter'

" erlang
"Plugin 'erlang-indent-file'
"Plugin 'Vimerl'

" lua
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'xolox/vim-misc'

" General
Plugin 'scrooloose/nerdtree'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'zaiste/tmux.vim'
Plugin 'scrooloose/nerdcommenter'


" HTML
"Plugin 'digitaltoad/vim-jade'
"Plugin 'tpope/vim-markdown'
"Plugin 'ZenCoding.vim'
"Plugin 'vim-scripts/Emmet.vim'

" CSS
" Plugin 'wavded/vim-stylus'


" let g:html_indent_inctags = "html,body,head,tbody"
" let g:html_indent_script1 = "inc"
" let g:html_indent_style1 = "inc"

" color scheme
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
"Plugin 'zaiste/Atom'
"Plugin 'w0ng/vim-hybrid'

" customize
Plugin 'Markdown-syntax'
Plugin 'taglist.vim'

Plugin 'majutsushi/tagbar'
Plugin 'ctrlp.vim'

Plugin 'yaml.vim'

Plugin 'scrooloose/syntastic'
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=3
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['ruby'], 'passive_filetypes': ['html', 'css', 'slim'] }

"let g:loaded_syntastic_go_go_checker=1
"let g:syntastic_enable_balloons = 1
"

let g:email = 'cyberyuanyang@gmail.com'
let g:username = 'Yuan Yang'

call vundle#end()


nmap <leader>t :TagbarToggle<CR>



" IndentLine
"Plugin 'Yggdroot/indentLine'
"set list lcs=tab:\|\
"let g:indentLine_color_term = 111
"let g:indentLine_color_gui = '#DADADA'
"let g:indentLine_char = 'c'
"let g:indentLine_char = '∙▹¦'
"let g:indentLine_char = '∙'


syntax on
"colorscheme solarized
"colorscheme wombat256
"colorscheme peaksea
colorscheme molokai
let g:molokai_original = 1
set t_Co=256
set background=dark

" vimrc settings.
set noeb
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set nu
set history=1000
set nobackup
set noswapfile
set nowritebackup
set hlsearch
set incsearch
set hidden
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8
"set langmenu=zh_CN.GB18030
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=zh_CN.UTF-8
set encoding=utf-8
set selectmode=mouse,key
set selection=exclusive
set showmatch
set scrolloff=3
set smartindent
set mouse=n
set backspace=2
set laststatus=2
set ruler
set cmdheight=2

" tmp settings.
au BufRead,BufNewFile *.txt set filetype=lua

map <silent><leader>l :NERDTree <ENTER>

map <silent><leader>k :tabnext <ENTER>
map <silent><leader>j :tabprevious <ENTER>
map <silent><leader>n :tabnew <ENTER>

map <silent><leader>y :w !pbcopy <ENTER>


inoremap <C-e> <END>
inoremap <C-a> <HOME>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <M-f> <S-Right>
inoremap <M-b> <S-Left>
inoremap <M-n> <Down>
inoremap <M-p> <Up>

" zen-coding
map \ ,

"let g:jedi#auto_initialization = 0
"let g:jedi#auto_vim_configuration = 0
"
"
"set clipboard=unnamed

set rtp+=$GOROOT/misc/vim
execute pathogen#infect()
call pathogen#infect()
set rtp+=/Users/yackr/.mer_env/lib/python2.7/site-packages/powerline/bindings/vim

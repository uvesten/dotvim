" Install vim-plug if we don't already have it
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    execute '!mkdir -p ~/.vim/plugged'
    execute '!mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" c & c++ style completion
"Plug 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer --system-libclang'} 


" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Colors

Plug 'pR0Ps/molokai-dark'
Plug 'jonathanfilip/vim-lucius'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'


" Linting
Plug 'dense-analysis/ale'

" Syntax
"
" Python 3
Plug 'davidhalter/jedi-vim'
Plug 'tell-k/vim-autopep8'
Plug 'ambv/black'
" md

" Rust
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'

" Go
Plug 'fatih/vim-go'

Plug 'plasticboy/vim-markdown'

" swift
Plug 'keith/swift.vim'

" haskell
Plug 'neovimhaskell/haskell-vim'

" Css3, sccss, less

Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'

" Javascript and jsx

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
"Plug 'mattn/emmet-vim'
"Plug 'ternjs/tern_for_vim', { 'do': 'npm install' } 
"Plug 'nikvdp/ejs-syntax'

" Html etc

Plug 'Slava/vim-spacebars'
Plug 'alvan/vim-closetag'

" Latex

Plug 'LaTeX-Box-Team/LaTeX-Box'

" R
Plug 'jalvesaq/Nvim-R'
"Plug 'chrisbra/csv.vim'
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'vim-pandoc/vim-rmarkdown'


" Tab completion

Plug 'ervandew/supertab'

" Docker

Plug 'ekalinin/Dockerfile.vim'

" Misc niceties for vim

" REPL

Plug 'jpalardy/vim-slime'

Plug 'tpope/vim-commentary'
Plug 'bkad/CamelCaseMotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'rking/ag.vim'
Plug 'Chun-Yang/vim-action-ag'

Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'Xuyuanp/nerdtree-git-plugin'

" Look
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'        " NERD Tree git flags
Plug 'ryanoasis/vim-devicons'             " Devicon glyphs

filetype plugin indent on                   " required!
call plug#end()

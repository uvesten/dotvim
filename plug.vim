" Install vim-plug if we don't already have it
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    execute 'mkdir -p ~/.vim/plugged'
    execute 'mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" git


Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Colors

Plug 'altercation/vim-colors-solarized'

" Linting
Plug 'scrooloose/syntastic'

" Syntax
"
" Python 3
Plug 'davidhalter/jedi-vim'
Plug 'tell-k/vim-autopep8'
" md

Plug 'plasticboy/vim-markdown'

" Css3, sccss, less

Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'

" Javascript and jsx

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ternjs/tern_for_vim'

" Latex

Plug 'LaTeX-Box-Team/LaTeX-Box'


" Tab completion

Plug 'ervandew/supertab'

" Misc niceties for vim

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

Plug 'Xuyuanp/nerdtree-git-plugin'

" Look
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

filetype plugin indent on                   " required!
call plug#end()
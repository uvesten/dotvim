execute pathogen#infect()
syntax on
filetype plugin indent on
" No blinking
set gcr=a:blinkon0
" 4 spaces = tab
set sw=4 sts=4 et
" Line numbers
set number

" Enable mouse in terminal
set mouse=a


syntax enable

" Choose colorscheme based on GUI. 
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

" Octave syntax 
augroup filetypedetect 
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave 
augroup END

" Run node on current file
command Nvm !node %

" Map localleader and leader to something that works.
let maplocalleader = ";"
let mapleader = ","

nmap <F8> :TagbarToggle<CR>

let g:NERDTreeDirArrows=0
nmap <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

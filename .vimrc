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

" For vim-slime, testing to use tmux instead of screen. 
let g:slime_target = "tmux"

" jshint2 integration
nnoremap <silent><F3> :JSHint<CR>
inoremap <silent><F3> <C-O>:JSHint<CR>
vnoremap <silent><F3> :JSHint<CR>

"closetag for html editing etc. 
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim


" word wrap. 
set wrap
set linebreak
set nolist  " list disables linebreak

"In addition, you will need to prevent Vim from automatically inserting line
"breaks in newly entered text. The easiest way to do this is:
set textwidth=0
set wrapmargin=0

"If you want to keep your existing 'textwidth' settings for most lines in your
"file, but not have Vim automatically reformat when typing on existing lines,
"you can do this with
" set formatoptions+=l

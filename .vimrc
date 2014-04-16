execute pathogen#infect()
syntax on
filetype plugin indent on

set autoindent
set smartindent
set expandtab
" No blinking
set gcr=a:blinkon0
" 2 spaces = tab
set sw=2 sts=2 et
" for javascript
au FileType javascript setl sw=2 sts=2 et
au FileType html setl sw=2 sts=2 et


" Line numbers
set number

" Enable mouse in terminal
set mouse=a

let g:solarized_contrast="high"
let g:solarized_visibility="high"

" Choose colorscheme based on GUI. 
if has('gui_running')
    set background=light
else
set background=dark
endif

colorscheme solarized

" Some special filetypes
augroup filetypedetect 
    au BufRead,BufNewFile *.m,*.oct set filetype=octave 
    au BufNewFile,BufRead *.ejs set filetype=html
augroup END

let g:mustache_abbreviations = 1

autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType handlebars noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>


" for html indent. vim-javascript fscks something up otherwise.
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

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

" dont fold markdown
let g:vim_markdown_folding_disabled=1

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

" for postgres development
autocmd FileType sql :let b:vimpipe_command="psql -U reservi"
autocmd FileType sql :let b:vimpipe_filetype="postgresql"

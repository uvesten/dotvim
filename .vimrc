" Allow incompatibilities with vim
set nocompatible

" Use the plug file

source $HOME/.vim/plug.vim

syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set autoindent
set smartindent
set expandtab
" No blinking
set gcr=a:blinkon0
" 2 spaces = tab
set sw=2 sts=2 et
" for javascript
au FileType javascript setl sw=4 ts=4 noexpandtab foldmethod=syntax
au FileType html setl sw=4 ts=4 noexpandtab
" for markdown
au FileType mkd setl sw=4 sts=4 et
" Enable spellchecking for Markdown
autocmd FileType mkd setlocal spell

" some latex settings
let g:tex_flavor = "latex"
autocmd FileType tex setlocal spell spelllang=en_gb 
let g:tex_comment_nospell= 1
let g:LatexBox_viewer = "open -a Skim"
"let g:LatexBox_latexmk_preview_continuously = 1
let g:LatexBox_latexmk_options = "-synctex=1"
:map <F4> :w !texcount -inc -incbib -sum -1 -<CR>



"font on mac

set guifont=Source\ Code\ Pro:h14

" Line numbers
set number

" Enable mouse in terminal
set mouse=a

"let g:solarized_contrast="high"
"let g:solarized_visibility="high"

" Choose colorscheme based on GUI. 
"if has('gui_running')
"    set background=light
"else
"set background=dark
"endif

colorscheme lucius
LuciusWhite
colorscheme molokai-dark

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

" jshint2 integration
nnoremap <silent><F3> :JSHint<CR>
inoremap <silent><F3> <C-O>:JSHint<CR>
vnoremap <silent><F3> :JSHint<CR>

"closetag for html editing etc. 
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1

" dont fold markdown
let g:vim_markdown_folding_disabled=1

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']

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

" Add support for markdown files in tagbar.
let g:tagbar_type_mkd = {
    \ 'ctagstype': 'mkd',
    \ 'ctagsbin' : '/usr/local/bin/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

" vim-airline settings
"
let g:airline_powerline_fonts = 1
set laststatus=2

" jedi-vim config
" python
"
let g:syntastic_python_checkers = ['flake8'] " will use flake8 as checker


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

set clipboard=unnamed

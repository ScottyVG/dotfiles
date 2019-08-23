""""""""""""""""""""""""""""""""""""""""
"   settings.vim
""""""""""""""""""""""""""""""""""""""""
syntax on
set nowrap
set encoding=utf8

" Show linenumbers
set number
set ruler 

" Set Proper Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
"set smarttab

" Always display the status line
set laststatus=2

" Enable highlighting of the current line
set cursorline

" Show tabstops and EOLs on startup
set list

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Only do this part when compiled with support for autocommands (vim 8.0
" supports +autocmd)
if has("autocmd")
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Custom tab settings for specific file types
  autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType scss setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType vim setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab
endif

" Run StripTrailingWhitespaces() when file is saved
" autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()

" make vim more liberal about hidden buffers
set hidden

""""""""""""""""""""""""""""""""""""""""
"   Plugin Customization
""""""""""""""""""""""""""""""""""""""""
"============== Airline Config ==============
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 

let g:airline_theme='light'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

"============== NerdTree Settings ==============
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

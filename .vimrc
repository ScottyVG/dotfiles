""""""""""""""""""""""""""""""""""""""""
"   .vimrc
""""""""""""""""""""""""""""""""""""""""

"Set latest Vim settings/options.
"set nocompatible

 
"so ~/.vim/plugins.vim
"syntax enable

"Make backspace behave like every other editor.
"set backspace=indent,eol,start
"The default leader is \, but a comma is much better.
"let mapleader = ','
"Let's activate line numbers.
"set number

"---------------Visuals---------------"
"Use 256 colors. This is useful for Terminal Vim.
"set t_CO=256
"colorscheme badwolf
"colorscheme atom-dark-256
"
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized 

"---------------Search---------------"
"set hlsearch
"set incsearch

"---------------Split Management---------------"
"set splitbelow
"set splitright

"nmap <C-H> <C-W><C-H>
"nmap <C-J> <C-W><C-J>
"nmap <C-K> <C-W><C-K>
"nmap <C-L> <C-W><C-L>

"---------------Mappings---------------"

"Make it easy to edit the Vimrc file.
"nmap  <Leader>ev :e $MYVIMRC<cr>

"Make it easy to edit files in the current directory.
"nmap  <Leader>. :e .<cr>

" Add simple highlight removal.
"nmap <Leader><space> :nohlsearch<cr>

" Map NerdTree to Ctrl + n
"map <C-n> :NERDTreeToggle<CR>

" CtrlP Mappings
"nmap <C-R> :CtrlPBufTag<cr>
"nmap <C-e> :CtrlPMRUFiles<cr>

"---------------Auto-Commands---------------"

"Automatically source the Vimrc file on save.
"augroup autosourcing
	"autocmd!
	"autocmd BufWritePost .vimrc source %
"augroup END






"============== Custom Startup Scripts ===============
source ~/.vim/startup/plugins.vim
source ~/.vim/startup/color.vim
source ~/.vim/startup/commands.vim
source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim

"let g:gruvbox_(option) = '(value)'


" Syntax-specific settings
"source ~/.vim/startup/startup/js.vim
"source ~/.vim/startup/startup/php.vim
"source ~/.vim/startup/startup/vim.vim
"source ~/.vim/startup/startup/yaml.vim
"source ~/.vim/startup/startup/html.vim

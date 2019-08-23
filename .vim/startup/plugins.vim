"""""""""""""""""""""""""""""""""""""""""
"		plugins.vim
"""""""""""""""""""""""""""""""""""""""""
set nocompatible							" be iMproved, required
filetype off									" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Utility
"Plugin 'scrooloose/nerdtree'
"Plugin 'majutsushi/tagbar'
"Plugin 'ervandew/supertab'
"Plugin 'BufOnly.vim'
"Plugin 'wesQ3/vim-windowswap'
"Plugin 'SirVer/ultisnips'
"Plugin 'junegunn/fzf.vim'
"Plugin 'junegunn/fzf'
"Plugin 'godlygeek/tabular'
"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'benmills/vimux'
"Plugin 'jeetsukumaran/vim-buffergator'
"Plugin 'gilsondev/searchtasks.vim'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'tpope/vim-dispatch'
"Plugin 'easymotion/vim-easymotion'

" Generic Programming Support 
"Plugin 'jakedouglas/exuberant-ctags'
"Plugin 'honza/vim-snippets'
"Plugin 'Townk/vim-autoclose'
"Plugin 'tomtom/tcomment_vim'
"Plugin 'tobyS/vmustache'
"Plugin 'janko-m/vim-test'
"Plugin 'maksimr/vim-jsbeautify'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'neomake/neomake'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'

" Markdown / Writting
"Plugin 'reedes/vim-pencil'
"Plugin 'tpope/vim-markdown'
"Plugin 'jtratner/vim-flavored-markdown'
"Plugin 'LanguageTool'

" Git Support
"Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
"Plugin 'tpope/vim-fugitive'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'jaxbot/github-issues.vim'

" PHP Support
"Plugin 'phpvim/phpcd.vim'
"Plugin 'tobyS/pdv'

" Theme / Interface
"Plugin 'AnsiEsc.vim'
"Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'sjl/badwolf'
"Plugin 'tomasr/molokai'
"Plugin 'morhetz/gruvbox'
"Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
"Plugin 'junegunn/limelight.vim'
"Plugin 'mkarmona/colorsbox'
"Plugin 'romainl/Apprentice'
"Plugin 'Lokaltog/vim-distinguished'
"Plugin 'chriskempson/base16-vim'
"Plugin 'w0ng/vim-hybrid'
"Plugin 'AlessandroYorba/Sierra'
"Plugin 'daylerees/colour-schemes'
"Plugin 'effkay/argonaut.vim'
"Plugin 'ajh17/Spacegray.vim'
"Plugin 'atelierbram/Base2Tone-vim'
"Plugin 'colepeters/spacemacs-theme.vim'
Plugin 'rakr/vim-one'

" OS X backspace fix
"set backspace=indent,eol,start

" All of your Plugins must be added before the following line
call vundle#end()						 " required
filetype plugin indent on		 " required

""""""""""""""""""""""""""""""""""""""""
"   mappings.vim
""""""""""""""""""""""""""""""""""""""""

" Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"============== Custom Mappings ===============
"quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

"============== Advanced Mappings ===============

" upper or lowercase the current word
nmap g^ gUiW
nmap gv guiW

"auto-center while navigating files
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Strip trailing whitespaces
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

" Easier window switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" shortcut to convert rem to px and px to rem in css file
" NEEDS SOME REFACTORING LOVE - Fuck it - who does frontend anyway... LOL
""""for converting px to rem""""
nnoremap <Leader>rem :%s;\<\(\d*\)px;\= float2nr(submatch(1) / 16.0) . "rem";
""""for converting rem to px"""
nnoremap <Leader>px :%s;\<\(\d\+\%(\.\d\+\)\?\)rem;\= float2nr(str2float(submatch(1)) * 16.0) . "px";

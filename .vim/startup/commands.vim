""""""""""""""""""""""""""""""""""""""""
"   commands.vim
""""""""""""""""""""""""""""""""""""""""

" Converting between tabs and spacesThe command for converting between tabs and spaces is:
:retab!

"More specifically, to convert tabs to spaces, run:
:set expandtab
:retab!

" And to convert spaces to tabs, run:
:set noexpandtab
:retab!

" Strip trailing spaces throughout an entire file by running this substitution command:
:%s/\s\+$//e

"You can delete all blank lines by running the following command:
:g/^$/d
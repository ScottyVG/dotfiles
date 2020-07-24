#!/usr/bin/env bash

# Load shell dotfiles like ~/.bash_promp, etc...
for file in ~/.bash_config/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#!/usr/bin/env bash

# Load shell dotfiles like ~/.bash_promp, etc...
for file in ~/.bash_config/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# bash vi - cuz bash vi is AWESOME!
set -o vi

# added by Anaconda3 5.2.0 installer
export PATH="/Users/scottvg/anaconda3/bin:$PATH"
export KUBECONFIG=~/.kube/kube-config-eks

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/scottvg/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/scottvg/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/scottvg/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/scottvg/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export PATH=$PATH:$HOME/.linkerd2/bin

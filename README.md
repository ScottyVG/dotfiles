# .dotfiles
[![License](https://img.shields.io/github/license/scottyvg/dotfiles.svg)](https://opensource.org/licenses/MIT)
![GitHub top language](https://img.shields.io/github/languages/top/scottyvg/dotfiles.svg)
![GitHub last commit](https://img.shields.io/github/last-commit/scottyvg/dotfiles.svg)

I use a bare Git repository to manage my dotfiles on various systems. I followed the the [Atlassian Docs](https://www.atlassian.com/git/tutorials/dotfiles) to get this set up.

## Starting from scratch

If you haven't been tracking your configurations in a Git repository before, you can start using this technique easily with these lines:

```
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
```

* The first line creates a folder ~/.dotfiles which is a Git bare repository that will track our files.
* Then we create an alias config which we will use instead of the regular git when we want to interact with our configuration repository.
* We set a flag - local to the repository - to hide files we are not explicitly tracking yet. This is so that when you type config status and other commands later, files you are not interested in tracking will not show up as untracked.
* Also you can add the alias definition by hand to your .bashrc or use the the fourth line provided for convenience.

After you've executed the setup any file within the $HOME folder can be versioned with normal commands, replacing git with your newly created `dotfiles` alias, like:
```
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push
```

## Install your dotfiles onto a new system (or migrate to this setup)
If you already store your configuration/dotfiles in a Git repository, on a new system you can migrate to this setup with the following steps:
* Prior to the installation make sure you have committed the alias to your .bashrc or .zsh:
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

* And that your source repository ignores the folder where you'll clone it, so that you don't create weird recursion problems:
```
echo ".dotfiles" >> .gitignore
```

* Now clone your dotfiles into a bare repository in a "dot" folder of your $HOME:
```
git clone --bare <git-repo-url> $HOME/.dotfiles
```

Define the alias in the current shell scope:
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Checkout the actual content from the bare repository to your $HOME:
```
dotfiles checkout
```

The step above might fail with a message like:
```
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
```

This is because your $HOME folder might already have some stock configuration files which would be overwritten by Git. The solution is simple: back up the files if you care about them, remove them if you don't care. I provide you with a possible rough shortcut to move all the offending files automatically to a backup folder:

```
mkdir -p .dotfiles.backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .dotfiles.backup/{}
```

Re-run the check out if you had problems:
```
dotfiles checkout
```

Set the flag showUntrackedFiles to no on this specific (local) repository:
```
dotfiles config --local status.showUntrackedFiles no
```

You're done, from now on you can now type config commands to add and update your dotfiles:
```
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push
```

** Useful Dotfile Links
* [StreakyCobra from Hacker News Post](https://news.ycombinator.com/item?id=11070797)
* [Atlassian Git Bare Repo Dotfile Docs](https://www.atlassian.com/git/tutorials/dotfiles)
* [Hidden file and hidden directory Wikipedia](https://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory)
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
* [Paul Irish](https://github.com/paulirish/dotfiles)
* [Paul Miller](https://github.com/paulmillr/dotfiles)

### System Blue (My favorite solid color mac background color)
517eb8
or
81,126,184
[NSColor colorWithCalibratedRed:0.320 green:0.496 blue:0.722 alpha:1.00]
[UIColor colorWithRed:0.318 green:0.494 blue:0.722 alpha:1.00]

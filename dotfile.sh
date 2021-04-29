#!/bin/bash

git clone --bare \
    https://github.com/ayoubelmhamdi/dotfiles.git  \
    $HOME/.dotfiles 



#switch to bare repo
# bare git repo alias for dotfiles
# alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
# alias csta="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME status"
# alias cadd="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME add"
# alias caddu="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME add -u"
# alias ccommit="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME commit -m"
# alias cpush="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME push"
# alias cpull="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME pull"
/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME  config --local status.showUntrackedFiles no
/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME  checkout --force

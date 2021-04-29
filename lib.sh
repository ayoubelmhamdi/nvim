#!/bin/bash

mkdir -p $HOME/.config/coc/extensions 

#  reset version coc-extenstion 

echo '{"dependencies":{}}'> $HOME/.config/coc/extension/spath-coc-ex1/package.json
echo "{}"                 > $HOME/.config/nvim/path-coc-ex3/package.json




sudo xbps-install -Sy     \
        neofetch          \
        python            \
        python-pip        \
        python3           \
        python3-pip       \
        ranger            \
        ninja             \
        gettext           \
        libtool           \
        libltdl           \
        autoconf          \
        automake          \
        cmake             \
        gcc               \
        gcc6              \
        pkg-config        \
        unzip             \
        libX11-devel      \
        libXext-devel     \
        tmux              \
        zsh               \
        curl              \
        wget              \
        git               \
        nodejs            \
        ripgrep           \
        the_silver_searcher




# unlock path of neovim provider
# used for fix provider3



pip3  install           \
      pynvim            \
      neovim-remote     \
      ueberzug          \

python3 -m pip install --user --upgrade pynvim
python2 -m pip install --user --upgrade pynvim

npm i npm                    \
      bash-language-server   \
      neovim

npm         install         \
#    coc-explorer        \
#    coc-snippets        \
#    coc-json           \
#    coc-actions        \
#      coc-java           \
#      coc-lists           \
#      coc-emmet           \
#      coc-tasks           \
#      coc-pairs           \
#      coc-tsserver        \
#      coc-floaterm        \
#      coc-html           \
#      coc-css            \
#      coc-cssmodules        \
#      coc-stylelintplus     \
#      coc-emoji           \
#      coc-yaml           \
#      coc-pyright        \
#      coc-svg           \
#      coc-prettier        \
#      coc-vimlsp           \
#      coc-xml           \
#      coc-yank           \
#      coc-sh              \
#     --global-style    \
#     --ignore-scripts  \
#     --no-bin-links    \
#     --no-package-lock \
#     --only=prod       \

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone                                          \
    https://github.com/ayoubelmhamdi/nvim.git      \
    $HOME/.config/nvim 

git clone \
    https://github.com/neovim/neovim.git           \
    $HOME/neovim 

git clone --bare \
    https://github.com/ayoubelmhamdi/dotfiles.git  \
    $HOME/.dotfiles 

#git clone \
#    https://github.com/ayoubelmhamdi/scripts.git  \
#    $HOME/scripts

#wget \
#    id_rsa -O \
#    $HOME.ssh/id_rsa 
#
#wget \
#    disk-test -O \
#    $HOME/disk.sh 

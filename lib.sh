#!/bin/bash


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

#npm install                \
#    coc-actions            \
#    coc-css                \
#    coc-cssmodules         \
#    coc-emmet              \
#    coc-emoji              \
#    coc-explorer           \
#    coc-floaterm           \
#    coc-html               \
#    coc-java               \
#    coc-json               \
#    coc-lists              \
#    coc-pairs              \
#    coc-prettier           \
#    coc-pyright            \
#    coc-sh                 \
#    coc-snippets           \
#    coc-stylelintplus      \
#    coc-svg                \
#    coc-tasks              \
#    coc-tsserver           \
#    coc-vimlsp             \
#    coc-xml                \
#    coc-yaml               \
#    coc-yank               \
#     --global-style        \
#     --ignore-scripts      \
#     --no-bin-links        \
#     --no-package-lock     \
#     --only=prod           \

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'




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

#!/bin/bash

mkdir -p $HOME/.config/coc/extensions 

# reset version coc-extenstion 

echo '{"dependencies":{}}'> $HOME/.config/coc/extension/spath-coc-ex1/package.json
echo "{}"                 > $HOME/.config/nvim/path-coc-ex3/package.json



sudo apt update      -y   
sudo apt install     -y   \
        neofetch          \
        python3           \
        python2           \
        python3-pip       \
        ranger            \
        ninja-build       \
        gettext           \
        libtool           \
        libtool-bin       \
        autoconf          \
        automake          \
        cmake             \
        g++               \
        pkg-config        \
        unzip             \
        libx11-dev        \
        libxext-dev       \
        tmux              \
        zsh               \
        curl              \
        wget              \
        git               \
        silversearcher-ag \



curl -fsSL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt install -y      \
         aptitude        \
         nodejs          

sudo aptitude install -y npm 

# unlock path of neovim provider
# used for fix provider3

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --force-reinstall
rm get-pip.py


pip3 --default-timeout=1000 install \
        pynvim            \
        neovim-remote     \
        ueberzug          \

pip3 install --user --upgrade  --default-timeout=10000  pynvim
pip2 install --user --upgrade  --default-timeout=10000  pynvim
python3 -m pip install --upgrade pynvim
python2 -m pip install --user --upgrade pynvim

npm i npm 
npm i                      \
    bash-language-server   \
    eovim

#sudo npm install         \
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
    $HOME/dotfiles 

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

#!/bin/bash

if [[ ! -f `which nvim` ]]; then
# clone last repo of neovim
    git clone                                       \
        https://github.com/neovim/neovim.git        \
        $HOME/neovim 
    
    cd $HOME/neovim
    make CMAKE_BUILD_TYPE=Release
    sudo make install
fi

# clone my repo from github
git clone                                          \
    https://github.com/ayoubelmhamdi/nvim.git      \
    $HOME/.config/nvim 


# this folder for tell vim savetmp file there
mkdir -p $HOME/.local/tmp
mkdir -p $HOME/.config/coc/extensions 

#  reset version coc-extenstion 
echo '{"dependencies":{}}'> $HOME/.config/coc/extension/package.json


#+++++++++++++++++++++++++++++++++++++++++++++++

##mv -f $HOME/.config/nvim/init.vim                  \
##      $HOME/.config/nvim/init.vim.bac
##
##mv -f $HOME/.config/nvim/confPlugin/plugins.vim    \
##      $HOME/.config/nvim/init.vim 
##
nvim $HOME/.config/nvim/init.vim                   \
     +PlugInstall                                  \
     +qall 
##
##
##mv -f $HOME/.config/nvim/init.vim                  \
##      $HOME/.config/nvim/confPlugin/plugins.vim 
##
##mv -f $HOME/.config/nvim/init.vim.bac \
##      $HOME/.config/nvim/init.vim 
##
##+++++++++++++++++++++++++++++++++++++++++++++++

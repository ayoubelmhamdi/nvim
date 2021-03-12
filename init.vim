"  _           _   _                 _             
" (_)  _ __   (_) | |_      __   __ (_)  _ __ ___  
" | | | '_ \  | | | __|     \ \ / / | | | '_ ` _ \ 
" | | | | | | | | | |_   _   \ V /  | | | | | | | |
" |_| |_| |_| |_|  \__| (_)   \_/   |_| |_| |_| |_|
                                                 
" welcome in init by Ayoub
let startvim = reltime()


" Source Active
  " Plug plugins
  source $HOME/.config/nvim/confPlugin/plugins.vim
  " vim set + theme
  source $HOME/.config/nvim/ayoub-nvim/top.vim
  source $HOME/.config/nvim/ayoub-nvim/set-setting.vim
  source $HOME/.config/nvim/ayoub-nvim/mycolor.vim
  source $HOME/.config/nvim/confPlugin/sublime.vim
  "vim spell
  source $HOME/.config/nvim/confPlugin/spell.vim

  " Plugin
  " incsearch
  source $HOME/.config/nvim/confPlugin/incsearch.vim
  " esay motion
  source $HOME/.config/nvim/confPlugin/easyMotion.vim
  "sneak
  " source $HOME/.config/nvim/confPlugin/sneak.vim
  " fzf
  source $HOME/.config/nvim/confPlugin/fzf.vim
  " "fast fold
  " source $HOME/.config/nvim/confPlugin/fastfold.vim

  " Programation
  " js
  source $HOME/.config/nvim/confPlugin/javascript.vim
  source $HOME/.config/nvim/confPlugin/map/javascript.vim

  "IDE VIM
  " coc 
  " source $HOME/.config/nvim/confPlugin/coc/extensions.vim
  source $HOME/.config/nvim/confPlugin/coc/coc.vim
  source $HOME/.config/nvim/confPlugin/map/coc.vim
  " vimspector
  source $HOME/.config/nvim/confPlugin/vimspector.vim
  "syntastic
  source $HOME/.config/nvim/confPlugin/syntastic.vim
  source $HOME/.config/nvim/confPlugin/map/syntastic.vim
        " surround
  source $HOME/.config/nvim/confPlugin/surround.vim
  " Gramare
  " source $HOME/.config/nvim/confPlugin/gramar.vim
  " source $HOME/.config/nvim/confPlugin/gramar.map.vim
  " yocompleme
  " source $HOME/.config/nvim/confPlugin/yocompleteme.vim
  " source $HOME/.config/nvim/confPlugin/yocompleteme-map.vim

  " add thermiball by scripte vim
  source $HOME/.config/nvim/confPlugin/terminal.vim


" Source Disactive
" source $HOME/.config/nvim/confPlugin/vimwiki.vim
" source $HOME/.config/nvim/confPlugin/goyo.vim
" source $HOME/.config/nvim/confPlugin/fzf.vim
" source $HOME/.config/nvim/confPlugin/easy-motion.vim
" source $HOME/.config/nvim/confPlugin/undotree.vim
" source $HOME/.config/nvim/confPlugin/emmet.vim
" source $HOME/.config/nvim/confPlugin/table-mode.vim
" source $HOME/.config/nvim/confPlugin/git-gutter.vim
" source $HOME/.config/nvim/confPlugin/airline.vim
" source $HOME/.config/nvim/confPlugin/hexokinase.vim
" source $HOME/.config/nvim/confPlugin/fern.vim
" source $HOME/.config/nvim/confPlugin/closetag.vim
"map Active
source ~/.config/nvim/ayoub-nvim/map/amap.vim
source ~/.config/nvim/ayoub-nvim/map/nmap.vim
source ~/.config/nvim/ayoub-nvim/map/cmap.vim
source ~/.config/nvim/ayoub-nvim/map/imap.vim
source ~/.config/nvim/ayoub-nvim/map/vmap.vim
"leader Active
source ~/.config/nvim/ayoub-nvim/leader/aleader.vim
source ~/.config/nvim/ayoub-nvim/leader/nleader.vim
source ~/.config/nvim/ayoub-nvim/leader/cleader.vim
source ~/.config/nvim/ayoub-nvim/leader/ileader.vim
source ~/.config/nvim/ayoub-nvim/leader/vleader.vim
" snippet disactived
"source ~/.config/nvim/ayoub-nvim/snippet/java.vim
"source ~/.config/nvim/ayoub-nvim/snippet/markdown.vim
"source ~/.config/nvim/ayoub-nvim/snippet/c.vim
"source ~/.config/nvim/ayoub-nvim/snippet/python.vim
"source ~/.config/nvim/ayoub-nvim/snippet/shell.vim
"source ~/.config/nvim/ayoub-nvim/snippet/js.vim
" my script
source ~/.config/nvim/ayoub-nvim/script/script1.vim


  "which key
  source $HOME/.config/nvim/confPlugin/which-key.vim
  " bottom vim conf
  source $HOME/.config/nvim/ayoub-nvim/bottom.vim



echo reltimestr(reltime(startvim))

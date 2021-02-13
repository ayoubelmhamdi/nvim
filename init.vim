" init vim Ayoub

let startvim = reltime()


" Source Active
  " vundel plugins
  source $HOME/.config/nvim/Plugin/plugins.vim
  " vim set + theme
  source $HOME/.config/nvim/ayoub-nvim/top.vim
  source $HOME/.config/nvim/ayoub-nvim/set-setting.vim
  source $HOME/.config/nvim/ayoub-nvim/mycolor.vim
  "vim spell
  source $HOME/.config/nvim/confPlugin/spell.vim

  " Plugin
  "sneak
  source $HOME/.config/nvim/confPlugin/sneak.vim
  " fzf
  source $HOME/.config/nvim/confPlugin/fzf.vim
  " "fast fold
  " source $HOME/.config/nvim/confPlugin/fastfold.vim
  "which key
  source $HOME/.config/nvim/confPlugin/which-key.vim

  " Programation
  " js
  source $HOME/.config/nvim/confPlugin/javascript.vim
  " js map
  source $HOME/.config/nvim/confPlugin/javascript.map.vim

  "IDE VIM
  " coc + ultiSnips
  source $HOME/.config/nvim/confPlugin/coc/extensions.vim
  source $HOME/.config/nvim/confPlugin/coc/coc+snips.vim
  source $HOME/.config/nvim/confPlugin/coc/coc+snips.map.vim
  "syntastic
  source $HOME/.config/nvim/confPlugin/syntastic.vim
  " syntastic map
  source $HOME/.config/nvim/confPlugin/syntastic.map.vim
  " Gramare
  " source $HOME/.config/nvim/confPlugin/gramar.vim
  " source $HOME/.config/nvim/confPlugin/gramar.map.vim
  " yocompleme
  " source $HOME/.config/nvim/confPlugin/yocompleteme.vim
  " source $HOME/.config/nvim/confPlugin/yocompleteme-map.vim



  " bottom vim conf
  source $HOME/.config/nvim/ayoub-nvim/bottom.vim

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





echo reltimestr(reltime(startvim))

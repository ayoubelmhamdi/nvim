"enable 256 colors in ConEmu on Win
if has('win32') && !has('gui_running') && !empty($CONEMUBUILD)
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
endif

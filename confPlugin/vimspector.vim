"__     _____ __  __ ____  ____  _____ ____ _____ 
"\ \   / /_ _|  \/  / ___||  _ \| ____/ ___|_   _|
" \ \ / / | || |\/| \___ \| |_) |  _|| |     | |  
"  \ V /  | || |  | |___) |  __/| |__| |___  | |  
"   \_/  |___|_|  |_|____/|_|   |_____\____| |_|  
let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>vl :call vimspector#Launch()<CR>
nmap <leader>vr :VimspectorReset<CR>
nmap <leader>ve :VimspectorEval
nmap <leader>vw :VimspectorWatch
nmap <leader>vo :VimspectorShowOutput
nmap <leader>vi <Plug>VimspectorBalloonEval
xmap <leader>vi <Plug>VimspectorBalloonEval
autocmd FileType java nmap <Leader>dd :CocCommand java.debug.vimspector.start<CR>


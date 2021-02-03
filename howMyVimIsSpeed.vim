" how calcule you vim speed
" add this to top vimrc
let startvim = reltime()

" add this to bottom vimrc
echo reltimestr(reltime(startvim))


" if you need diff time: inialize again startvim=reltime()
" add var in top and echo in last to calcule time 


"

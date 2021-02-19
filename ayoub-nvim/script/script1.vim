"
function! P5js()
" remove duplique not work yet 
" %s/^\(.*\)\(\n\1\)\+$/\1/
" worked by cmd
" sort file | uniq
"
" history
" clean non sed command
" :v/^[v,g,%]/d
 " add breakline
 %s/[^source.js]":{"/":{\r"/g
 %s/","/",\r"/g
 " %g/^"descriptionMore/s/},/\rendsnippet/
 " %g/^"rightLabelHTML/d
 " %g/^"leftLabel/d
 " %g/^"prefix/d
 " %g/^"description/d

endfunction







function! Breakline()
    %s/a\n/b\r/g
endfunction



function! Ayoub(name)
   put='\"'.a:name 
endfunction



function! SortMaster1()
    " sortMaster(myFile/or dont ask,newfile,vim)
    " delete white space and delete comment in this tow files
    " my file start with i=1000
    " new file start with last $i
    " so i open new tab
    " write myFile
    " write newfile
    " add number in top each line
    " put diff org clone
    " or make tow diff one without adding number
    " and another with numbring
    "
    " let lines = getline(a:start, a:end)
    " let sortlines = 
    let i=500 | g/^./;s/^/\='num:'.i."\r"/ | let i=i+1

endfunction


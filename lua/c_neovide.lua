vim.cmd [[
if exists("g:neovide")
    echomsg "ss"
    let g:neovide_cursor_animation_length=0.02
    let g:neovide_cursor_antialiasing=v:true
    let g:neovide_cursor_vfx_mode = "ripple"
    set guifont=Fisa\ Code:h20
endif
]]

# Speed
-------

`neovim` not view the `UI` before loading all plugins, it's load all necessary files from `rtp` synchronic.

For open the `UI` and `plugin` in **async** mode, I had use this truc:
```lua
vim.loop.new_timer():start( 1, 0, vim.schedule_wrap(function()
  -- load plugin and setting here
end))
```
but i had many probleme, with plugin that already run in `async` mode.

so i use now the  manual `events`, like, not load `plugins` and `setting` at we `CursorMoved`

## Philosophy 
The `linux` philosophy in `configuration` for me, I think we should not make our config like a `plugin`, if you need the complexe stuff, try to create a plugin to implement this complexity.


## TODO
  - [x] fix lspconfig
  - [ ] cmp: should at place in start

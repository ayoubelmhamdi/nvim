# Speed
-------

`neovim` not view the `UI` before loading all plugins, it's load all necessary files from `rtp` synchronic.

For open the `UI` and `plugin` in **async** mode, I'm using this truc:
```lua
vim.loop.new_timer():start(
  1,
  0,
  vim.schedule_wrap(function()
  -- load plugin and setting here
  end)
)

```

## Philosophy 
The `linux` philosophy in `configuration` for me, I think we should not make our config like a `plugin`, if you need the complexe stuff, try to create a plugin to implement this complexity.


## TODO
  - [x] fix lspconfig
  - [ ] cmp: should at place in start

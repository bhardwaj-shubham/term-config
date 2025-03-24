--- @type LazyPluginSpec
return {
  'folke/lazydev.nvim',
  dependencies = { 'Bilal2453/luvit-meta', lazy = true },
  ft = 'lua',
  config = function()
    local layzdev = require 'lazydev'
    layzdev.setup {
      library = {
        'lazy.nvim',
        'luvit-meta/library',
        { path = 'wezterm-types', mods = { 'wezterm' } },
      },
    }
  end,
}

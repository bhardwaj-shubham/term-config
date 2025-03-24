--- @type LazyPluginSpec
return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        require 'nvim-treesitter.install'.compilers = { "zig", "gcc" }

        treesitter.setup({
            ensure_installed = {
                "lua",
                "vim",
                "vimdoc",
                "javascript",
                "jsdoc",
                "typescript",
                "html",
                "python",
                "json",
                "regex",
                "bash",
                "markdown",
                "markdown_inline",
            },
            sync_install = false,
            auto_install = true,

            indent = { enable = true },

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}

--- @type LazyPluginSpec
return {
    "folke/which-key.nvim",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local whichkey = require("which-key")

        whichkey.setup({
            preset = "modern",
            replace = {
                key = {
                    { "<leader>", "SPC" },
                    { "<Leader>", "SPC" },
                    { "<space>", "SPC" },
                    { "<Space>", "SPC" },
                    { "<cr>", "RET" },
                    { "<CR>", "RET" },
                    { "<Tab>", "TAB" },
                },
            },
            win = {
                no_overlap = false,
                padding = { 0, 0 },
            },
            layout = {
                width = { max = 45 },
                spacing = 3,
            },
            icons = {
                breadcrumb = "»",
                separator = "➜",
                group = "",
            },
        })

        whichkey.add({
            {
                { "<leader>b", group = "buffer" },
                { "<leader>c", group = "debuging" },
                { "<leader>f", group = "telescope" },
                { "<leader>g", group = "git" },
                { "<leader>m", group = "treesiter-objects" },
                { "<leader>o", group = "misc" },
                { "<leader>p", group = "project" },
                { "<leader>r", group = "runner" },
                { "<leader>t", group = "toggle" },
                { "<leader>v", group = "lsp" },
                { "<leader>w", group = "window" },
                { "<leader>x", group = "trouble" },
            },
        })
    end,
}

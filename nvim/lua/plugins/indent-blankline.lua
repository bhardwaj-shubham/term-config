--- @type LazyPluginSpec
return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local blankline = require("ibl")
        local hooks = require("ibl.hooks")

        vim.opt.list = true
        vim.opt.listchars:append("space:⋅")

        local highlight = {
            "RainbowDelimiterRed",
            "RainbowDelimiterYellow",
            "RainbowDelimiterBlue",
            "RainbowDelimiterOrange",
            "RainbowDelimiterGreen",
            "RainbowDelimiterViolet",
            "RainbowDelimiterCyan",
        }
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = "#E06C75" })
            vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#E5C07B" })
            vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = "#61AFEF" })
            vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#D19A66" })
            vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", { fg = "#98C379" })
            vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#C678DD" })
            vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", { fg = "#56B6C2" })
        end)

        vim.g.rainbow_delimiters = { highlight = highlight }
        hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

        blankline.setup({
            indent = {
                char = "│",
                highlight = highlight,
            },
            scope = {
                enabled = true,
                char = "│",
                highlight = highlight,
                show_exact_scope = true,
            },
        })
    end,
}

--- @type LazyPluginSpec
return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local gitsigns = require("gitsigns")

        gitsigns.setup({
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            },
        })

        vim.keymap.set({ "n", "v" }, "ghs", ":Gitsigns stage_hunk<CR>", { silent = true, desc = "Stage hunk" })
        vim.keymap.set({ "n", "v" }, "ghr", ":Gitsigns reset_hunk<CR>", { silent = true, desc = "Reset hunk" })
        vim.keymap.set("n", "ghS", gitsigns.stage_buffer, { silent = true, desc = "Stage buffer" })
        vim.keymap.set("n", "gha", gitsigns.stage_hunk, { silent = true, desc = "Satage hunk" })
        vim.keymap.set("n", "ghu", gitsigns.undo_stage_hunk, { silent = true, desc = "Undo stage hunk" })
        vim.keymap.set("n", "ghR", gitsigns.reset_buffer, { silent = true, desc = "Reset buffer" })
        vim.keymap.set("n", "ghp", gitsigns.preview_hunk, { silent = true, desc = "Preview hunk" })
        vim.keymap.set("n", "ghd", gitsigns.diffthis, { silent = true, desc = "Diff this" })
        vim.keymap.set("n", "ghD", function()
            gitsigns.diffthis("~")
        end, { silent = true, desc = "Diff this" })
    end,
}

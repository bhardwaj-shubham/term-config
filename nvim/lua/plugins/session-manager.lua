--- @type LazyPluginSpec
return {
    "coffebar/neovim-project",
    priority = 100,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
        "Shatur/neovim-session-manager",
    },
    init = function()
        vim.opt.sessionoptions:append("globals")
    end,
    config = function()
        local project = require("neovim-project")
        local smconfig = require("session_manager.config")

        project.setup({
            projects = {
                "~/git/*",
                "~/.config/nvim",
            },
            last_session_on_startup = false,
            dashboard_mode = false,
            session_manager_opts = {
                autoload_mode = smconfig.AutoloadMode.CurrentDir,
            },
        })

        vim.keymap.set(
            "n",
            "<leader>ps",
            "<cmd>Telescope neovim-project discover<CR>",
            { desc = "Open project discover", silent = true }
        )
        vim.keymap.set(
            "n",
            "<leader>ph",
            "<cmd>Telescope neovim-project history<CR>",
            { desc = "Opens project history", silent = true }
        )
    end,
}

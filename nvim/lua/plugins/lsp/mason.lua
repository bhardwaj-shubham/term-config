--- @type LazyPluginSpec
return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        -- "jayp0521/mason-null-ls.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")
        -- local mason_null_ls = require("mason-null-ls")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "ts_ls",
                "html",
                "cssls",
                "lua_ls",
                "pyright",
                "powershell_es",
                "jsonls",
                "rust_analyzer",
                "yamlls",
                "bashls",
                "tailwindcss",
                "marksman",
                "eslint",
            },
            automatic_installation = true,
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "stylua",
                "prettier",
                "dprint",
                "ruff",
                "rustywind",
            },
            automatic_installation = true,
        })

        -- mason_null_ls.setup({
        --     ensure_installed = {
        --         "stylua",
        --         "prettier",
        --         "dprint",
        --     },
        --     automatic_installation = true,
        -- })
    end,
}


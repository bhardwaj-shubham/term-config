--- @type LazyPluginSpec
return {
    "rcarriga/nvim-notify",
    enabled = false,
    config = function()
        local notify = require("notify")

        notify.setup({
            fps = 60,
            stages = "slide",
            timeout = 2500,
        })

        vim.notify = notify
    end,
}

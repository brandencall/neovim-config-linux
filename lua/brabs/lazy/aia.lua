return {
    {
        dir = "~/Projects/plugins/aia.nvim",
        name = "aia.nvim",
        lazy = false,
        config = function()
            require("aia")
            vim.notify("aia.nvim config executed", vim.log.levels.INFO)
        end
    }
}

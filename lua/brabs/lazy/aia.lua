return {
    {
        dir = "~/Projects/plugins/aia.nvim",
        name = "aia.nvim",
        lazy = false,
        config = function()
            require("aia")
            vim.keymap.set("n", "<leader>ba", function()
                vim.cmd("AiFloatingWin")
            end, { desc = "Open floating window" })
        end
    }
}

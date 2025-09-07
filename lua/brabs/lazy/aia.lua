return {
    {
        dir = "~/projects/plugins/aia_nvim",
        name = "aia.nvim",
        lazy = false,
        config = function()
            require("aia")

            vim.o.statusline = "%f %h%m%r %{v:lua.require'aia.state'.get_status_icon()}%=%-14.(%l,%c%V%) %P"
            vim.keymap.set("n", "<leader>ba", function()
                vim.cmd("AiFloatingWin")
            end, { desc = "Open floating window" })
            vim.keymap.set("n", "<leader>bc", function()
                vim.cmd("AiProjectWin")
            end, { desc = "Open project window" })
        end
    }
}

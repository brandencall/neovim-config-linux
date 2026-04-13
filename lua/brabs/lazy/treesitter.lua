return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")

        ts.install({
            "vimdoc",
            "lua",
            "bash",
            "c_sharp",
            "javascript",
            "typescript",
            "cpp",
            "c",
        })

        -- Start Treesitter automatically for the filetypes you care about
        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "lua",
                "vim",
                "sh",
                "cs",
                "javascript",
                "typescript",
                "cpp",
                "c",
                "templ",
            },
            callback = function(ev)
                pcall(vim.treesitter.start, ev.buf)
            end,
        })

        -- Optional: keep regex highlighting for markdown
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "markdown",
            callback = function(ev)
                pcall(vim.treesitter.start, ev.buf)
                vim.bo[ev.buf].syntax = "ON"
            end,
        })

        vim.api.nvim_create_autocmd("FileType", {
            callback = function(ev)
                pcall(vim.treesitter.stop, ev.buf)
            end,
        })

        vim.treesitter.language.register("templ", "templ")

        require("nvim-treesitter").install({
            templ = {
                url = "https://github.com/vrischmann/tree-sitter-templ.git",
                files = { "src/parser.c", "src/scanner.c" },
                branch = "master",
            },
        })

        vim.treesitter.language.register("templ", "templ")
    end
}

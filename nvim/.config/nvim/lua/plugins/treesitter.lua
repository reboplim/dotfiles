return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")
        ts.setup {
            install_dir = vim.fn.stdpath("data") .. "/site"
        }
        ts.install {
            "bash",
            "c",
            "diff",
            "html",
            "javascript",
            "latex",
            "lua",
            "markdown",
            "markdown_inline",
            "python",
            "query",
            "vim",
            "vimdoc",
        }
    end,
}

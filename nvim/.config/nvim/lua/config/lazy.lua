local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        { "nvim-treesitter/nvim-treesitter", lazy = false, build = ":TSUpdate" },
        {
            "lervag/vimtex",
            lazy = false,
            init = function()
                vim.g.vimtex_view_general_viewer = 'okular'
                vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'
                vim.g.vimtex_compiler_method = 'latexmk'
                vim.g.vimtex_quickfix_mode = 0
            end
        },
        { import = "plugins" },
    },
    checker = { enabled = true },
})

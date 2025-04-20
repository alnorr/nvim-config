return {
    "lervag/vimtex",
    init = function()
        vim.g.vimtex_view_method = 'zathura' -- PDF viewer
        vim.g.vimtex_compiler_method = 'latexmk' -- PDF viewer
        vim.g.maplocalheader = ","
    end,
}

return {
    "vimwiki/vimwiki",
    init = function()
        vim.g.vimwiki_list = {
            {
                syntax = "markdown",
                ext = ".md",
                path = "~/vimwiki/",
            },
        }
        vim.g.vimwiki_global_ext = 0
    end,
}

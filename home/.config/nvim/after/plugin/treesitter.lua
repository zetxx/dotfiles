require'nvim-treesitter.configs'.setup {
    ensure_installed = { "markdown", "markdown_inline", "go", "typescript", "dockerfile", "ssh_config", "sql", "json", "jsdoc", "lua", "vim", "javascript" },
    sync_install = false,
    auto_install = true,
    indent = {
        enable = true
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

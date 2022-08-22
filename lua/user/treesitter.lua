local configs = require("nvim-treesitter.configs")
configs.setup {
    ensure_installed = {"c_sharp", "cpp", "css", "dockerfile", "gitignore", "html", "javascript", "jsdoc", "json",
                        "lua", "markdown", "python", "regex", "rust", "toml", "tsx", "typescript", "vue", "yaml"},
    sync_install = false,
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = {""}, -- list of language that will be disabled
        additional_vim_regex_highlighting = true
    },
    indent = {
        enable = true,
        disable = {"yaml"}
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false
    }
}

local treesitter = require("nvim-treesitter")

treesitter.setup()

treesitter.install({
    "bash",
    "c",
    "cpp",
    "css",
    "go",
    "html",
    "java",
    "javascript",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "python",
    "rust",
    "sql",
    "tsx",
    "typescript",
    "yaml",
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "bash",
        "c",
        "cpp",
        "css",
        "go",
        "html",
        "java",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "rust",
        "sql",
        "tsx",
        "typescript",
        "yaml",
    },
    callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})

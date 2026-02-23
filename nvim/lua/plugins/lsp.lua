return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "mason-org/mason.nvim",
        "mason-org/mason-lspconfig.nvim",
        "L3MON4d3/LuaSnip",
        "j-hui/fidget.nvim",
    },
    config = function()
        require("fidget").setup({})
        require("mason").setup({
            PATH = "append",
        })

        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
            },
        })
    end
}

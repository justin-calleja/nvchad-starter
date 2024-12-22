return {{
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform"
}, -- These are some examples, uncomment them if you want to see them work!
{
    "neovim/nvim-lspconfig",
    config = function()
        -- local lspconfig = require "configs.lspconfig"
        local lspconfig = require "lspconfig"
        lspconfig.denols.setup {
            enable = true,
            root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
            init_options = {
                lint = true,
                unstable = true
            }
        }

        -- Format on save
        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = {"*.ts", "*.tsx", "*.js", "*.jsx"}, -- Add Deno-supported file types
            callback = function()
                vim.lsp.buf.format({
                    async = false
                })
            end
        })
    end
} -- {
-- 	"nvim-treesitter/nvim-treesitter",
-- 	opts = {
-- 		ensure_installed = {
-- 			"vim", "lua", "vimdoc",
--      "html", "css"
-- 		},
-- 	},
-- },
}

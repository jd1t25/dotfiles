require("lsp-format").setup {}
require("lspconfig").pylsp.setup { on_attach = require("lsp-format").on_attach }
require("lspconfig").lua_ls.setup { on_attach = require("lsp-format").on_attach }

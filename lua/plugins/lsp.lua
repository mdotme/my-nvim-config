return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "css-lsp",
        "eslint-lsp",
        "html-lsp",
        "json-lsp",
        "typescript-language-server",
        "vue-language-server",
      },
    },
  },
  {
    "nvim-lspconfig",
    -- keys = {
    --   { "<leader>ce", "<cmd>EslintFixAll<cr>", desc = "ESLint Fix All" },
    -- },
    opts = {
      setup = {
        volar = function()
          require("lazyvim.util").lsp.on_attach(function(client, _)
            if client.name == "volar" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
    },
  },
}

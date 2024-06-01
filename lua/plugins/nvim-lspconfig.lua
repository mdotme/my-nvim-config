return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        volar = {
          init_options = {
            typescript = {
              -- serverPath = "/home/amritk/.asdf/shims/tsserver",
              tsdk = "~/.nvm/versions/node/v20.11.0/lib/node_modules/typescript/lib",
            },
            vue = {
              hybridMode = false,
            },
            plugins = {
              {
                name = "@vue/language-server",
                location = "~/.nvm/versions/node/v20.11.0/lib/node_modules/@vue/language-server",
                languages = { "javascript", "typescript", "vue" },
              }
            }
          },
          filetypes = {
            'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json',
          },
          -- root_dir = util.root_pattern("src/App.vue"),
        },
        tsserver = {
          filetypes = {
            "typescript",
            "javascript",
            "vue",
          },
          init_options = {
            plugins = {
              {
                name = "@vue/typescript-plugin",
                location = "~/.nvm/versions/node/v20.11.0/lib/node_modules/@vue/typescript-plugin",
                languages = { "javascript", "typescript", "vue" },
              },
            },
            typescript = {
              -- serverPath = "/home/amritk/.asdf/shims/tsserver",
              -- tsdk = "~/.nvm/versions/node/v20.11.0/lib/node_modules/typescript/lib",
              tsdk = vim.fn.getcwd() .. "/node_modules/typescript/lib"
            },
          },
        }
      },
    },
  },
}

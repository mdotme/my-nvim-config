local util = require("lspconfig.util")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        volar = {
          filetypes = {
            "javascript",
            "typescript",
            "vue",
          },
          root_dir = util.root_pattern("src/App.vue"),
        },
      },
    },
  },
}

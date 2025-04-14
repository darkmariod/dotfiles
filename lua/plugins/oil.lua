return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- opcional
    config = function()
      require("oil").setup({
        default_file_explorer = true,
        view_options = {
          show_hidden = true,
        },
        keymaps = {
          ["<C-h>"] = "actions.parent",  -- ir al directorio padre
          ["<C-s>"] = false,             -- desactiva keymap si no lo usas
        },
      })
    end,
  }
  
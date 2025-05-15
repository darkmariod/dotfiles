-- plugins/neotree.lua
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      sources = { "filesystem", "buffers" },
    })

    -- Mapea <space>t para abrir NeoTree
    vim.keymap.set("n", "<space>t", function()
      require("neo-tree.command").execute({ toggle = true })
    end, { desc = "Open NeoTree" })
  end,
}

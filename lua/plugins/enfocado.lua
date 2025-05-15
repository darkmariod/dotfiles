return {
  "wuelnerdotexe/vim-enfocado",
  name = "enfocado",
  priority = 1000,
  config = function()
    vim.g.enfocado_style = "neon"
    vim.g.enfocado_background = "light"
    vim.cmd("colorscheme enfocado")
    vim.o.background = "light"
  end
}

return {
  {
    "IndianBoy42/tree-sitter-just",
    event = "BufEnter Justfile",
    config = function()
      require('tree-sitter-just').setup({})
    end
  },
  "sainnhe/sonokai",
  "simrat39/rust-tools.nvim",
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}

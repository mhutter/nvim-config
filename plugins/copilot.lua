return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        auto_trigger = true,
      },
      filetypes = {
        -- Enable for these filetypes
        go = true,
        make = true,
        rust = true,

        -- For shellscripts, only enable if it's not an .env file
        sh = function ()
          if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '%.env') then
            return false
          end
          return true
        end,

        -- Disable for everything else
        ["*"] = false,
      },
    })
  end,
}

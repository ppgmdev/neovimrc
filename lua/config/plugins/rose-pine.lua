-- lua/plugins/rose-pine.lua
return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      disable_background = true,
      dark_variant = "main",
      dim_inactive_windows = false,
      extend_background_behind_borders = true,
      transparent = false,
      enable = {
        terminal = true,
      },
      styles = {
        sidebars = "dark",
        floats = "dark",
      }
    })
    vim.cmd("colorscheme rose-pine-main")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end
}

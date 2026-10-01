return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = true,
      styles = { sidebars = "transparent", floats = "transparent" },
      on_colors = function(c)
        c.bg = "#001127"
        c.bg_dark = "#001127"
        c.bg_float = "#001127"
        c.bg_sidebar = "#001127"
        c.bg_statusline = "#0a2240"
        c.bg_highlight = "#0a2240"
        c.fg = "#ffffff"
        c.fg_dark = "#ffffff"
        c.fg_sidebar = "#ffffff"
        c.fg_gutter = "#3f6390"
        c.comment = "#8fa9c9"
        c.red = "#e0283c"
        c.blue = "#ffffff"
        c.cyan = "#ffffff"
        c.green = "#ffffff"
        c.yellow = "#ffffff"
        c.magenta = "#ffffff"
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "tokyonight" },
  },
}

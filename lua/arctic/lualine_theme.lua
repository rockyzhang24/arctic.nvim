-- Lualine theme
-- Put it under lualine.nvim/lua/lualine/themes/ and then set options.theme to
-- 'darkplus'

local colors = {
  white = '#ffffff',
  blue = '#007acc',
  orange = '#cc6633',
  purple = '#68217a',
  pink = '#c586c0',
  green = '#16825d',
  violet = '#646695',
  gray = '#252526',
  darkgray = '#212121',
}

return {
  normal = {
    a = { fg = colors.white, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.white, bg = colors.darkgray },
    c = { fg = colors.white, bg = colors.gray }
  },
  insert = {
    a = { fg = colors.white, bg = colors.orange, gui = 'bold' },
  },
  visual = {
    a = { fg = colors.white, bg = colors.purple, gui = 'bold' },
  },
  replace = {
    a = { fg = colors.white, bg = colors.pink, gui = 'bold' },
  },
  command = {
    a = { fg = colors.white, bg = colors.green, gui = 'bold' },
  },
  terminal = {
    a = { fg = colors.white, bg = colors.violet, gui = 'bold' },
  },
  inactive = {
    a = { fg = colors.white, bg = colors.darkgray },
  }
}

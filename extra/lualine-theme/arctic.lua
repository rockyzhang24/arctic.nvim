-- Lualine theme
-- Put it under lualine.nvim/lua/lualine/themes/ and then set options.theme to
-- 'arctic'

local colors = {
  pink = '#c586c0',
  red = '#c72e0f',
  orange = '#cc6633',
  green = '#16825d',
  blue = '#007acc',
  violet = '#646695',
  purple = '#68217a',
  white = '#ffffff',
  lightgray = '#454545',
  gray = '#252526',
}

return {
  normal = {
    a = { fg = colors.white, bg = colors.blue },
    b = { fg = colors.white, bg = colors.lightgray },
    c = { fg = colors.white, bg = colors.gray }
  },
  insert = {
    a = { fg = colors.white, bg = colors.orange },
  },
  visual = {
    a = { fg = colors.white, bg = colors.purple },
  },
  replace = {
    a = { fg = colors.white, bg = colors.pink },
  },
  command = {
    a = { fg = colors.white, bg = colors.green },
  },
  terminal = {
    a = { fg = colors.white, bg = colors.violet },
  },
  pending = {
    a = { fg = colors.white, bg = colors.red },
  },
  inactive = {
    a = { fg = colors.white, bg = colors.darkgray },
  }
}

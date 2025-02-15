local colors = {
  black = '#000000',
  black2 = '#555753',
  red = '#cc0000',
  red2 = '#ef2929',
  green = '#4e9a06',
  green2 = '#8ae234',
  yellow = '#c4a000',
  yellow2 = '#fce94f',
  blue = '#3465a4',
  blue2 = '#729fcf',
  magenta = '#75507b',
  magenta2 = '#ad7fa0',
  cyan = '#06989a',
  cyan2 = '#34e2e2',
  white = '#d3d7cf',
  white2 = '#eeeeec'
}

-- Colors
vim.api.nvim_set_hl(0, 'Normal', {
  fg = colors.white2
})
vim.api.nvim_set_hl(0, 'ErrorMsg', {
  fg = colors.red2,
  underline = true
})
vim.api.nvim_set_hl(0, 'WinSeparator', {
  fg = colors.white
})
vim.api.nvim_set_hl(0, 'LineNr', {
  fg = colors.black2
})
vim.api.nvim_set_hl(0, 'Visual', {
  bg = colors.cyan
})
vim.api.nvim_set_hl(0, 'Comment', {
  fg = colors.black2,
  italic = true
})
vim.api.nvim_set_hl(0, 'String', {
  fg = colors.green
})
vim.api.nvim_set_hl(0, 'Charater', {
  fg = colors.magenta2
})
vim.api.nvim_set_hl(0, 'Number', {
  fg = colors.yellow
})
vim.api.nvim_set_hl(0, 'Boolean', {
  fg = colors.yellow
})
vim.api.nvim_set_hl(0, 'Float', {
  fg = colors.yellow
})
vim.api.nvim_set_hl(0, 'Identifier', {
  fg = colors.blue
})
vim.api.nvim_set_hl(0, 'Function', {
  fg = colors.blue2
})
vim.api.nvim_set_hl(0, 'Statement', {
  fg = colors.cyan2
})

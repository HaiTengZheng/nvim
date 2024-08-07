vim.o.colorcolumn = "80"
vim.o.canceallevel = 2
vim.o.number = true
vim.o.relativenumber = true

-- tab
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtap = true

vim.o.autoindent = true
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.g.encodeing = "UTF-8"
vim.o.fileencoding = "utf-8"

-- 开启 Folding 模块
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- 默认不要折叠
vim.opt.foldlevel = 99

-- theme
-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		string = true,
		operator = true,
		comments = true,
	},
	strikethrough = true,
	invert_selection= false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")
vim.o.background = "dark" -- "dark" -- or "light" for light mode
vim.o.termguicolors = true

-- no auto comment
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ 'r', 'o' })
  end,
})

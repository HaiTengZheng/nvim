local opt = { noremap = true, silent = true }
local map = vim.keymap.set

-- nvim-tree
-- `alt-1` open the tree
map('n', "<A-1>", ":NvimTreeToggle<CR>", opt)

-- telescope
map('n', "<C-f>", ":Telescope find_files<CR>", opt)
map('n', "<C-g>", ":Telescope live_grep<CR>", opt)
map('n', "<C-b>", ":Telescope buffers<CR>", opt)
map('n', "<C-h>", ":Telescope help_tags<CR>", opt)

-- resize with arrows
-- 2 lines
map('n', "<C-Up>", ":resize -2<CR>", opt)
map('n', "<C-Down>", ":resize +2<CR>", opt)
map('n', "<C-Left>", ":vertical resize -2<CR>", opt)
map('n', "<C-Right>", ":vertical resize +2<CR>", opt)

-- dap
map('n', '<F5>', function() require('dap').continue() end)
map('n', '<F10>', function() require('dap').step_over() end)
map('n', '<F11>', function() require('dap').step_into() end)
map('n', '<F12>', function() require('dap').step_out() end)
map('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
map('n', '<Leader>B', function() require('dap').set_breakpoint() end)
map('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
map('n', '<Leader>dr', function() require('dap').repl.open() end)
map('n', '<Leader>dl', function() require('dap').run_last() end)
map({'n', 'v'}, '<Leader>dh', function()
  require('dap.ui.widgets').hover()
end)
map({'n', 'v'}, '<Leader>dp', function()
  require('dap.ui.widgets').preview()
end)
map('n', '<Leader>df', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.frames)
end)
map('n', '<Leader>ds', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.scopes)
end)

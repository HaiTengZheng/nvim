local custom = function(client, bufnr)
	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	local map = vim.keymap.set
	map('n', 'gD', vim.lsp.buf.declaration, bufopts)
	map('n', 'gd', vim.lsp.buf.definition, bufopts)
	map('n', 'gh', vim.lsp.buf.hover, bufopts)
	map('n', 'gi', vim.lsp.buf.implementation, bufopts)
	map('n', '<space>sh', vim.lsp.buf.signature_help, bufopts)
	map('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
	map('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
	map('n', '<space>wl', function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	map('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
	map('n', '<space>rn', vim.lsp.buf.rename, bufopts)
	map('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
	map('n', 'gr', vim.lsp.buf.references, bufopts)
	map('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp = require('lspconfig')

lsp['ltex'].setup({
	on_attach = custom
})

lsp['lua_ls'].setup({
	on_attach = custom
})

lsp['clangd'].setup({
	on_attach = custom
})

lsp['jedi_language_server'].setup({
	on_attach = custom
})

lsp['rust_analyzer'].setup({
	on_attach = custom
})


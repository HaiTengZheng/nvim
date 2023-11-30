require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
})

require("mason-lspconfig").setup({
	ensure_installed = { 
		"awk_ls",
		"ansiblels", 
		"asm_lsp",
		"pkgbuild_language_server", 
		"clangd", 
		"csharp_ls",
		"cmake",
		"cssls",
		"dockerls",
		"docker_compose_language_service",
		"graphql",
		"html",
		"jsonls",
		"quick_lint_js",
		"ltex",
		"lua_ls",
		"marksman",
		"jedi_language_server",
		"rust_analyzer",
		"sqlls",
		"taplo",
		"lemminx",
		"yamlls",
	}	
})


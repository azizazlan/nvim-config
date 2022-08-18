local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = {"tsx", "toml", "html", "json", "rust", "lua", "yaml", "markdown", "lua", "json", "javascript", "css", "dockerfile"}, -- one of "all" or a list of languages
	ignore_install = { "phpdoc", "tree-sitter-phpdoc" },
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css", "phpdoc", "tree-sitter-phpdoc" },
		additional_vim_regex_highlighting = true,
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	}
})

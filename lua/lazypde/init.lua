local M = {}

function M.setup(opts)
	-- vim.api.nvim_echo({
	-- 	{ package.path, "ErrorMsg" },
	-- }, true, {})
	--
	--  for k, v in pairs(package.loaders) do
	-- 	print(k, type(v))
	-- 	if type(v) == "function" then
	-- 		local info = debug.getinfo(v, "nSl")
	-- 		print(string.format("[%s]:%d %s", info.short_src, info.linedefined, info.name))
	-- 	end
	-- end

	require("lazypde.config.autocmds")
	require("lazypde.config.keymaps")
end

function M.init()
	require("lazypde.config.options")
end

return M

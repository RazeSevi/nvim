--[[require('rose-pine').setup({
    disable_background = true
})]]--
local colorTheme = "tokyonight-night" -- "nightfly"
--vim.cmd("colorscheme tokyonight-night")
vim.cmd("colorscheme " .. colorTheme)

function ColorMyPencils(color)
	color = color or colorTheme

	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
-- set colorscheme to nightfly with protected call
-- in case it isn't installed
-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- if not status then
--   print("Colorscheme not found!") -- print error if colorscheme not installed
--   return
-- end

vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>e", vim.cmd.Ex)

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")
keymap.set("v", "jk", "<ESC>")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- markdown management
keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>") -- starts mardown preview
keymap.set("n", "<leader>ms", ":MarkdownPreviewStop<CR>") -- stop markdown preview

-- Latex management
keymap.set("n", "<leader>lp", ":LatexPreviewToggle<CR>")
keymap.set("n", "<leader>l[", ":PrevLatexPreviewMode<CR>")
keymap.set("n", "<leader>l]", ":NextLatexPreviewMode<CR>")

-- LiveServer
keymap.set("n", "<leader>pls", ":LiveServer start<CR>")
keymap.set("n", "<leader>els", ":LiveServer stop<CR>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

keymap.set("n", "<leader>ls", "<S-^>") -- go to star of line
keymap.set("n", "<leader>le", "<S-$>") -- go to end of line

keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
keymap.set("i", "<C-c>", "<Esc>")

keymap.set("n", "Q", "<nop>")
keymap.set("n", "<leader>f", vim.lsp.buf.format)

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Allow exiting the terminal using Escape
keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Horizontal terminal, much like gnome builder & vs code
keymap.set("n", "<leader>t", function()
    vim.cmd("split")
    vim.cmd("wincmd j") -- Jump to the bottom split
    vim.cmd("terminal")
    vim.cmd("wincmd 10-") -- Reduce the terminal height
    vim.cmd('startinsert')
end)

-- Vertical terminal
keymap.set("n", "<leader>tv", function()
    vim.cmd("vsplit")
    vim.cmd("wincmd l") -- Jump to the left split
    vim.cmd("terminal")
    vim.cmd('startinsert')
end)

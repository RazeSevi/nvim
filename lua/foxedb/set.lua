local opt = vim.opt

opt.guicursor = ""

-- line numbers
opt.nu = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

opt.hlsearch = false
opt.incsearch = true

--appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 8
opt.isfname:append("@-@")
opt.iskeyword:append("-")

opt.updatetime = 50

opt.colorcolumn = "80"


vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- linemumbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2         -- 2 spaces for tabs
opt.shiftwidth = 2      -- 2 spaces for indent width
opt.expandtab = true    -- expand tab to spaces
opt.autoindent = true   -- copy indent from current line when starting new one
 
-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true   -- ignore case when searching
opt.smartcase = true    -- if you include mixed case in your search, then case-sensitive
 
-- appearence
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes"  -- show sign column so that the text doesn't shift

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-") -- consider - as part of a word

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Make line numbers default (default: false)
vim.wo.number = true

-- Set relative numbered lines (default: false)
vim.o.relativenumber = true

-- Sync clipboard between OS and Neovim. (default: '')
vim.o.clipboard = 'unnamedplus'

-- Display lines as one long line (default: true)
vim.o.wrap = false

-- Companion to wrap, don't split words (default: false)
vim.o.linebreak = true

-- Enable mouse mode (default: '')
vim.o.mouse = 'a'

-- Copy indent from current line when starting new one (default: true)
vim.o.autoindent = true

-- Case-insensitive searching UNLESS \C or capital in search (default: false)
vim.o.ignorecase = true

-- Smart case (default: false)
vim.o.smartcase = true

-- The number of spaces inserted for each indentation (default: 8)
vim.o.shiftwidth = 4

-- Insert n spaces for a tab (default: 8)
vim.o.tabstop = 4

-- Number of spaces that a tab counts for while performing editing operations (default: 0)
vim.o.softtabstop = 4

-- Convert tabs to spaces (default: false)
vim.o.expandtab = true

-- Minimal number of screen lines to keep above and below the cursor (default: 0)
vim.o.scrolloff = 4

-- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)
vim.o.sidescrolloff = 8

-- Highlight the current line (default: false)
vim.o.cursorline = false

-- Force all horizontal splits to go below current window (default: false)
vim.o.splitbelow = true

-- Force all vertical splits to go to the right of current window (default: false)
vim.o.splitright = true

-- Set highlight on search (default: true)
vim.o.hlsearch = false

-- We don't need to see things like -- INSERT -- anymore (default: true)
vim.o.showmode = false

-- Set termguicolors to enable highlight groups (default: false)
vim.opt.termguicolors = true

-- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')
vim.o.whichwrap = 'bs<>[]hl'

-- Set number column width to 2 {default 4} (default: 4)
vim.o.numberwidth = 4

-- Creates a swapfile (default: true)
vim.o.swapfile = false

-- Make indenting smarter again (default: false)
vim.o.smartindent = true

-- Always show tabs (default: 1)
vim.o.showtabline = 2

-- Allow backspace on (default: 'indent,eol,start')
vim.o.backspace = 'indent,eol,start'

-- Pop up menu height (default: 0)
vim.o.pumheight = 10

-- So that `` is visible in markdown files (default: 1)
vim.o.conceallevel = 0

-- Keep signcolumn on by default (default: 'auto')
vim.wo.signcolumn = 'yes'

-- The encoding written to a file (default: 'utf-8')
vim.o.fileencoding = 'utf-8'

-- More space in the Neovim command line for displaying messages (default: 1)
vim.o.cmdheight = 1

-- Enable break indent (default: false)
vim.o.breakindent = true

-- Decrease update time (default: 4000)
vim.o.updatetime = 250

-- Time to wait for a mapped sequence to complete (in milliseconds) (default: 1000)
vim.o.timeoutlen = 300

-- Creates a backup file (default: false)
vim.o.backup = false

-- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (default: true)
vim.o.writebackup = false

-- Save undo history (default: false)
vim.o.undofile = true

-- Set completeopt to have a better completion experience (default: 'menu,preview')
vim.o.completeopt = 'menuone,noselect'

-- Don't give |ins-completion-menu| messages (default: does not include 'c')
vim.opt.shortmess:append 'c'

-- Hyphenated words recognized by searches (default: does not include '-')
vim.opt.iskeyword:append '-'

-- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode. (default: 'croql')
vim.opt.formatoptions:remove { 'c', 'r', 'o' }

-- Separate Vim plugins from Neovim in case Vim still in use (default: includes this path if Vim is installed)
vim.opt.runtimepath:remove '/usr/share/vim/vimfiles'

vim.opt.compatible = false
vim.opt.number= true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop=4		-- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.expandtab = false
vim.opt.showmatch = true
vim.opt.mouse = 'v'		-- middle-click paste with 
vim.opt.hlsearch = true		-- highlight search 
vim.opt.incsearch = true	-- incremental search
vim.opt.autoindent = true   	-- indent a new line the same amount as the line just typed vim.opt.wildmode = longest,list -- get bash-like tab completions
-- vim.opt.cc = '80'               -- set an 80 column border for good coding style
vim.opt.clipboard = unnamedplus -- using system clipboard
vim.opt.cursorline = true       -- highlight current cursorline
vim.opt.ttyfast = true          -- Speed up scrolling in Vim
vim.opt.swapfile = false
vim.opt.showmode = false


vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

vim.opt.matchpairs:append('<:>') -- add angle brackets to matchpairs


-- vim.opt.formatoptions='qrn1j' -- don't continue comments when hit `o`
vim.cmd("autocmd FileType * set formatoptions=qrn1j")

-- Set .C file as cpp (my usual root script extension)
vim.cmd("autocmd BufRead,BufNewFile *.C set filetype=cpp")


vim.opt.autochdir = true -- change directory to the file being edited

require('config.undotree')

require('config.keymaps')
require('config.lazy')
require('config.themes')
require('config.nerdtree')
require('config.vimfugitive')
require('config.easyalign')
require('config.easymotion')
require('config.snips')
require('config.telescope')


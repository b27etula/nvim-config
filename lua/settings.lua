-- common

vim.opt.encoding = 'utf-8'
vim.opt.swapfile = false
vim.opt.mouse = 'a'
vim.opt.cursorline = true
vim.opt.so = 5
vim.opt.wrap = true
vim.opt.showcmd = true
vim.opt.foldcolumn = '2'

-- colorscheme

vim.opt.termguicolors = true
vim.cmd[[colorscheme nord]]

-- number

vim.opt.number = true
vim.opt.relativenumber = true

-- tabs and formatting

vim.cmd([[
filetype indent plugin on
syntax enable
]])
vim.opt.expandtab = true
vim.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.cmd[[autocmd FileType lua,yaml,xml,html,xhtml,css,scss,javascript setlocal shiftwidth=2 tabstop=2]]
vim.cmd[[ autocmd BufNewFile,BufRead *.html set filetype=htmldjango ]]

vim.cmd[[au BufEnter * set fo-=c fo-=r fo-=o]]
vim.cmd[[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]

-- search

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- etc

vim.cmd[[autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]]

vim.api.nvim_exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup end
]], false)

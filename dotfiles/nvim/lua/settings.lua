vim.opt_local.suffixesadd:prepend('.lua')
vim.opt_local.suffixesadd:prepend('init.lua')
vim.opt_local.path:prepend(vim.fn.stdpath('config')..'/lua')

local global = vim.g                -- Глобальные переменные
local opt = vim.opt                 -- global/buffer/window-scoped options
----------------------------------------------------------
-- Главные
-----------------------------------------------------------
opt.colorcolumn = '80'              -- Разделитель на 80 символов
opt.cursorline = true               -- Подсветка строки с курсором
opt.spelllang= { 'en_us', 'ru' }    -- Словари рус eng
opt.number = true                   -- Включаем нумерацию строк
opt.relativenumber = true           -- Вкл. относительную нумерацию строк
opt.so=999                          -- Курсор всегда в центре экрана
opt.undofile = true                 -- Возможность отката назад
opt.splitright = true               -- vertical split вправо
opt.splitbelow = true               -- horizontal split вниз
opt.mouse = 'a'
-----------------------------------------------------------
-- Цветовая схема
-----------------------------------------------------------
opt.termguicolors = true      --  24-bit RGB colors
vim.cmd [[colorscheme onedark]]
-----------------------------------------------------------
-- Табы и отступы
-----------------------------------------------------------
vim.cmd([[
filetype indent plugin on
syntax enable
]])
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smartindent = true
--
vim.cmd([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=500}
augroup end
]], false)


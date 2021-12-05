require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    --------------------------------------------
    -- Внешний вид
    --------------------------------------------
    use 'joshdick/onedark.vim'
    --------------------------------------------
    -- Информационная строка внизу
    --------------------------------------------
    use { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
        require('lualine').setup{
            options = {
                theme = 'dracula',
                section_separators = '',
                component_separators = '',
            },
        }
    end, }
    -- Табы вверху
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require('bufferline').setup{}
    end, }
    -----------------------------------------------------------
    -- НАВИГАЦИЯ
    -----------------------------------------------------------
    -- Файловый менеджер
    use {'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
        require('nvim-tree').setup {
        }
    end, }
    ----------------------------------------------------------
    -- autopairs
    ---------------------------------------------------------
    use {'windwp/nvim-autopairs',
    requires = {'windwp/nvim-autopairs'},
    config = function()
        require('nvim-autopairs').setup {
        }
    end, }
    -- Замена telescope
    use { 'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = function() require'telescope'.setup {} end, }
    ---------------------------------------------------------
    -- Разное
    ---------------------------------------------------------
    use 'easymotion/vim-easymotion'
    --Даже если включена русская раскладка vim команды будут работать
    use 'powerman/vim-plugin-ruscmd'
    -- 'Автоформатирование' кода для всех языков
    use 'Chiel92/vim-autoformat'
    -- Стартовая страница, если просто набрать vim в консоле
    use 'mhinz/vim-startify'
    -- Комментирует по gc все, вне зависимости от языка программирования
    use {'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end }
    -- Линтер, работает для всех языков
    use 'dense-analysis/ale'
    --- popup окошки
    use 'nvim-lua/popup.nvim'
    -- Автодополнялка
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    --- Автодополнлялка к файловой системе
    use 'hrsh7th/cmp-path'

    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use 'nvim-treesitter/nvim-treesitter'
    -- Обрамляет или снимает обрамление. Выдели слово, нажми S и набери <h1>
    use 'tpope/vim-surround'

    use 'neovim/nvim-lspconfig'
end)




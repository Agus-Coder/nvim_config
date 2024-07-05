vim.cmd [[packadd packer.nvim]]

-- Packer configuration and plugins
return require('packer').startup(function(use)
    use 'vim-airline/vim-airline-themes'
    use "lukas-reineke/indent-blankline.nvim"
    use 'jistr/vim-nerdtree-tabs'
    use 'christoomey/vim-tmux-navigator'
    use 'tiagofumo/vim-nerdtree-syntax-highlight'
    use 'navarasu/onedark.nvim'
    use 'windwp/nvim-autopairs'
    use 'nvim-treesitter/nvim-treesitter'
    use 'pangloss/vim-javascript'
    use 'wbthomason/packer.nvim'
    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'
    use 'tpope/vim-commentary'
    use 'williamboman/mason.nvim'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason-lspconfig.nvim'
    use 'vim-airline/vim-airline'
    use 'akinsho/toggleterm.nvim'
    use 'mg979/vim-visual-multi'
    use 'tpope/vim-surround'
    use 'akinsho/bufferline.nvim'
    use 'mfussenegger/nvim-lint'
    use 'stevearc/conform.nvim'
    use "hrsh7th/nvim-cmp" -- Completion plugin
    use "hrsh7th/cmp-nvim-lsp" -- LSP source for nvim-cmp
--    use "hrsh7th/cmp-buffer" -- Buffer completions
--    use "hrsh7th/cmp-path" -- Path completions
--    use "hrsh7th/cmp-cmdline" -- Command line completions
end)



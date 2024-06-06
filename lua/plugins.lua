vim.cmd [[packadd packer.nvim]]

-- Packer configuration and plugins
return require('packer').startup(function(use)
    use 'vim-airline/vim-airline-themes'
    use "lukas-reineke/indent-blankline.nvim"
    use 'jistr/vim-nerdtree-tabs'
    use 'tiagofumo/vim-nerdtree-syntax-highlight'
    use 'navarasu/onedark.nvim'
    use 'windwp/nvim-autopairs'
    use 'nvim-treesitter/nvim-treesitter'
    use 'pangloss/vim-javascript'
    use 'wbthomason/packer.nvim'
    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'
    use 'tpope/vim-commentary'
    use 'neovim/nvim-lspconfig'
    use 'vim-airline/vim-airline'
    use 'akinsho/toggleterm.nvim'
    use 'mg979/vim-visual-multi'
    use 'tpope/vim-surround'
    use 'akinsho/bufferline.nvim'
    use 'mfussenegger/nvim-lint'
    use 'stevearc/conform.nvim'
end)



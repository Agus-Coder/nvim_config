vim.cmd [[packadd packer.nvim]]

-- Packer configuration and plugins
return require('packer').startup(function(use)
--    use 'flazz/vim-colorschemes'
    use 'vim-airline/vim-airline-themes'
    use "lukas-reineke/indent-blankline.nvim"
    use 'vim-perl/vim-perl'
--    use 'neovim/nvim-lspconfig'
    use 'jistr/vim-nerdtree-tabs'
    use 'navarasu/onedark.nvim'
    use 'windwp/nvim-autopairs'
    use 'pangloss/vim-javascript'
    use 'wbthomason/packer.nvim'
    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'
    use 'tpope/vim-commentary'
    use 'vim-airline/vim-airline'
    use 'akinsho/toggleterm.nvim'
    use 'mg979/vim-visual-multi'
    use 'tpope/vim-surround'
    use 'akinsho/bufferline.nvim'
end)



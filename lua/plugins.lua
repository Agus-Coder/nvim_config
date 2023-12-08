vim.cmd [[packadd packer.nvim]]

-- Packer configuration and plugins
return require('packer').startup(function(use)
    use "norcalli/nvim-colorizer.lua"
    use "lukas-reineke/indent-blankline.nvim"
    use 'vim-perl/vim-perl'
    use 'dense-analysis/ale'
    use 'neovim/nvim-lspconfig'
    use 'jistr/vim-nerdtree-tabs'
    use 'navarasu/onedark.nvim'
    use 'windwp/nvim-autopairs'
    use 'pangloss/vim-javascript'
    use 'morhetz/gruvbox'
    use 'wbthomason/packer.nvim'
    use 'roxma/nvim-yarp'
    use 'roxma/vim-hug-neovim-rpc'
    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'
    use 'tpope/vim-commentary'
    use 'vim-airline/vim-airline'
    use 'akinsho/toggleterm.nvim'
    use 'neoclide/coc.nvim'
    use 'mg979/vim-visual-multi'
    use 'tpope/vim-surround'
end)



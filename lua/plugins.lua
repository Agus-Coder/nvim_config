vim.cmd [[packadd packer.nvim]]

-- Packer configuration and plugins
return require('packer').startup(function(use)
    use 'windwp/nvim-autopairs'
    use 'pangloss/vim-javascript'
    use 'morhetz/gruvbox'
    use 'wbthomason/packer.nvim'
    use 'Shougo/denite.nvim'
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



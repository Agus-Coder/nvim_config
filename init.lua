vim.g.mapleader = ' '
require('plugins')
require('npairs')
require('ejemplo_directorio')
require('conquer')
require('ale')

vim.opt.termguicolors = true
--require("bufferline").setup{
--	options = {
--		separator_style = "slant"
--	}
--}

-- CTRL + C to copy in any mode
vim.keymap.set('n', '<C-c>', '"+y', { noremap = true })
vim.keymap.set('v', '<C-c>', '"+y', { noremap = true })   
vim.keymap.set('o', '<C-c>', '"+y', { noremap = true })
  
-- CTRL + V to paste in any mode 
vim.keymap.set('n', '<C-v>', '"+p', { noremap = true }) 
vim.keymap.set('i', '<C-v>', '<Esc>"+pa', { noremap = true })
vim.keymap.set('v', '<C-v>', '"+p', { noremap = true })

-- CTRL + X to cut in any mode
vim.keymap.set('n', '<C-x>', '"+d', { noremap = true })
vim.keymap.set('v', '<C-x>', '"+d', { noremap = true })
vim.keymap.set('o', '<C-x>', '"+d', { noremap = true })

vim.g.coc_global_extensions = {
  'coc-tsserver', 'coc-eslint', 'coc-json', 'coc-css',
  'coc-html', 'coc-snippets'
}

vim.g.airline_powerline_fonts = 1
vim.g.NERDTreeChDirMode = 2

vim.cmd('autocmd FileType javascript setlocal shiftwidth=2')

vim.cmd('filetype plugin indent on')
vim.cmd("autocmd FileType perl setlocal equalprg=perltidy\\ -st")

-- Use <Tab> for trigger completion and navigate completion menu
-- vim.cmd('inoremap <silent><expr> <Tab> pumvisible() ? "\\<C-n>" : "\\<Tab>"')
-- vim.cmd('inoremap <silent><expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"')

-- Set leader key for CoC commands
vim.cmd('nmap <leader>cf <Plug>(coc-fix-current)')
vim.cmd('nmap <leader>ca <Plug>(coc-codeaction)')

-- Auto open NERDTree when Neovim starts
vim.cmd([[autocmd VimEnter * NERDTree]])

-- Show hidden files in NERDTree
-- vim.g.NERDTreeShowHidden=1

-- Set color scheme
-- vim.cmd [[colorscheme gruvbox]]

-- Set the font for vim-devicons
vim.g['devicons_font'] = 'FiraCode Nerd Font'

-- Set autoindent and number
vim.opt.autoindent = true
vim.opt.number = true

vim.keymap.set('n', '<space>w', '<cmd>:w<cr>')
vim.keymap.set('n', '<space>q', '<cmd>:q<cr>')
vim.keymap.set('n', '<space>wq', '<cmd>:wq<cr>')

vim.keymap.set('n', '<leader>t', ':NERDTreeToggle<cr>', { noremap = true, silent = true })
-- Require Packer
local packer_exists, packer = pcall(require, 'packer')

local npairs = require('nvim-autopairs')

-- Enable autopairs
--
-- npairs.setup()

-- Enable autopairs for JavaScript
--require('nvim-autopairs.completion.compe').setup({
--    map_cr = true, -- Map <CR> in insert mode
--    map_complete = true -- Insert `(` and `)` automatically in completion mode
--})


require("toggleterm").setup{
  size = 20,
  open_mapping = [[<c-t>]],
  hide_numbers = true, -- Hide the number column in the terminal
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 1, -- Default: 1
  start_in_insert = true,
  insert_mappings = true, -- ToggleTerm will insert text for you
  persist_size = true,
  direction = 'horizontal', -- | 'horizontal' | 'window' | 'float',
  close_on_exit = true,
  shell = vim.o.shell, -- Change the default shell
}


require('onedark').setup {
    style = 'darker'
}
require('onedark').load()
require'lspconfig'.perlpls.setup{}

require("ibl").setup()

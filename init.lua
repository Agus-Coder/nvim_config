vim.g.mapleader = ' '
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
require('plugins')
require('npairs')
require('ejemplo_directorio')
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"tsserver"}
})
require("lspconfig").tsserver.setup({})

require('nvim-treesitter.configs').setup {
	ensure_installed = { "c" },
	highlight = {
		enable = true,
	},
}

require('lint').linters_by_ft = {
  c = {'clangtidy',}
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

require("conform").setup({
  formatters_by_ft = {
    c = { "clang-format " }
  }
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})

vim.api.nvim_set_keymap('i', '<C-\\>', '<Esc>', { noremap = true })

vim.api.nvim_set_keymap(
    "n",
    "<space>cc",
   ':execute("!gnome-terminal -- bash -c \'gcc " . shellescape("%") . " -o " . shellescape("%<") . " && ./" . shellescape("%<") . "\'")<CR>',
    { noremap = true }
)

vim.opt.shiftwidth = 4
vim.opt.tabstop    = 4
vim.opt.expandtab  = true

vim.g.airline_powerline_fonts = 1
vim.g.NERDTreeChDirMode = 2

vim.cmd('autocmd FileType javascript setlocal shiftwidth=2')

vim.cmd('filetype plugin indent on')
vim.cmd("autocmd FileType perl setlocal equalprg=perltidy\\ -st")

-- Set the font for vim-devicons
vim.g['devicons_font'] = 'FiraCode Nerd Font'

-- Set autoindent and number
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set('n', '<space>w', '<cmd>:w<cr>')
vim.keymap.set('n', '<space>q', '<cmd>:q<cr>')
vim.keymap.set('n', '<space>wq', '<cmd>:wq<cr>')

vim.keymap.set('n', '<leader>t', ':NERDTreeToggle<cr>', { noremap = true, silent = true })
-- Require Packer
local packer_exists, packer = pcall(require, 'packer')

local npairs = require('nvim-autopairs')

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

require("ibl").setup()

require("onedark").setup {
	style = 'warmer'
}
require("onedark").load()


require("completions")

require("config.lazy");
require "user.keyMaps"
require "user.options"


require('npairs')
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {'ts_ls', 'java_language_server'}
})
require("lspconfig").ts_ls.setup({})
require("lspconfig").java_language_server.setup({})




vim.g.airline_powerline_fonts = 1
vim.g.NERDTreeChDirMode = 2

vim.cmd('autocmd FileType javascript setlocal shiftwidth=2')

vim.cmd('filetype plugin indent on')
vim.cmd("autocmd FileType perl setlocal equalprg=perltidy\\ -st")

-- Set the font for vim-devicons
vim.g['devicons_font'] = 'FiraCode Nerd Font'



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
  direction = 'float', -- | 'horizontal' | 'window' | 'float',
  close_on_exit = true,
  shell = vim.o.shell, -- Change the default shell
}

require("ibl").setup()

require("onedark").setup {
	style = 'warmer'
}
require("onedark").load()


require("completions")



local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier,
  },
})


-- Define the ToggleFold function in Lua
function ToggleFold()
  if vim.fn.foldclosed('.') == -1 then
    vim.cmd('normal! $V%zf')
  else
    vim.cmd('normal! zo')
  end
end





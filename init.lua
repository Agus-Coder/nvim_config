require("config.lazy");
require "user.keyMaps"
require "user.options"

-- Plugins
local buffLine = require("bufferline")
local mason = require("mason")
local npairs = require('npairs')

mason.setup()
require("mason-lspconfig").setup({
    ensure_installed = { 'ts_ls' }
})
require("lspconfig").ts_ls.setup({})
require("lspconfig").lua_ls.setup({})

vim.cmd('autocmd FileType javascript setlocal shiftwidth=2')

vim.cmd('filetype plugin indent on')
vim.cmd("autocmd FileType perl setlocal equalprg=perltidy\\ -st")

local npairs = require('nvim-autopairs')

require("toggleterm").setup {
    size = 20,
    open_mapping = [[<c-t>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 1,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = 'float',
    close_on_exit = true,
    shell = vim.o.shell,
}

require("ibl").setup()

require("onedarkpro").setup {
    options = {
        cursorline = true,
        cursorcolumn = true,
    },
    colors = {
        onedark = {
            bg = "#1a1d24",
        }
    }
}
require("onedarkpro").load()


require("completions")



local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier,
    },
})


function ToggleFold()
    if vim.fn.foldclosed('.') == -1 then
        vim.cmd('normal! $V%zf')
    else
        vim.cmd('normal! zo')
    end
end

require("neo-tree").setup({
    window = {
        width = 30,
    },
})


buffLine.setup {
    options = {
        buffer_close_icon = '󰅖',
        modified_icon = '▲ ',
        separator_style = 'slant',
        numbers = "none",
        color_icons = true,
        diagnostics = "nvim_lsp",
        --        indicator = {
        --            style = 'underline',
        --        },
    },
}

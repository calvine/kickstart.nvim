vim.cmd 'set expandtab'
vim.cmd 'set tabstop=2'
vim.cmd 'set softtabstop=2'
vim.cmd 'set shiftwidth=2'

vim.o.rnu = true

vim.keymap.set('i', '<C-k>', vim.lsp.buf.hover, { desc = 'Show LSP Hover Docs' })
vim.keymap.set('i', '<C-o>', '<C-x><C-o>', { desc = 'Auto Complete OmniFunc' })

return {}

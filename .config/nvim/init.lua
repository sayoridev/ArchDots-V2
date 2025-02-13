vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })  -- Ctrl+A seleziona tutto
vim.keymap.set("v", "<BS>", '"_d', { noremap = true, silent = true })    -- Backspace cancella selezione
vim.keymap.set('v', '<C-c>', 'y') -- Ctrl+C for copy

vim.opt.termguicolors = true  -- Abilita TrueColor (necessario per personalizzare il colore di sfondo)
vim.cmd("highlight Normal guibg=#aa111111")  -- Sfondo nero leggero (#111111)


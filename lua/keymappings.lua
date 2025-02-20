vim.api.nvim_set_keymap('n', '-', ':RnvimrToggle<CR>', {noremap = true, silent = true})

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- TODO fix this
-- Terminal window navigation
vim.cmd([[
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>
]])

-- TODO fix this
-- resize with arrows
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', {silent = true})

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')

-- fix to get netrw's gx command to work correctly
vim.api.nvim_set_keymap('n', 'gx', ":call netrw#BrowseX(expand((exists('g:netrw_gx')? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())<cr>", {noremap = true, silent = true})

vim.cmd('vnoremap p "0p')
vim.cmd('vnoremap P "0P')
-- vim.api.nvim_set_keymap('v', 'p', '"0p', {silent = true})
-- vim.api.nvim_set_keymap('v', 'P', '"0P', {silent = true})

-- vim.cmd('inoremap <expr> <TAB> (\"\\<C-n>\")')
-- vim.cmd('inoremap <expr> <S-TAB> (\"\\<C-p>\")')

-- vim.api.nvim_set_keymap('i', '<C-TAB>', 'compe#complete()', {noremap = true, silent = true, expr = true})

-- vim.cmd([[
-- map p <Plug>(miniyank-autoput)
-- map P <Plug>(miniyank-autoPut)
-- map <leader>n <Plug>(miniyank-cycle)
-- map <leader>N <Plug>(miniyank-cycleback)
-- ]])

-- Toggle the QuickFix window
-- vim.api.nvim_set_keymap('', '<C-q>', ':call QuickFixToggle()<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', ';', ':', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap("x", "K", ":move \"<-2<CR>gv-gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("x", "J", ":move \">+1<CR>gv-gv", {noremap = true, silent = true})


vim.api.nvim_set_keymap("n", "B", "^", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "E", "$", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "B", "^", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "E", "$", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "dab", "]}v%kd", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<S-Enter>", "O<ESC>j", {noremap = false, silent = true})
vim.api.nvim_set_keymap("n", "<Enter>", "o<ESC>k", {noremap = false, silent = true})

-- Map Ctrl-Backspace to delete the previous word in insert mode
vim.api.nvim_set_keymap("!", "<C-BS>", "<C-w>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<C-h>", "<C-w>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-w>", "<C-\\><C-o>dB", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-BS>", "<C-\\><C-o>db", { noremap = true, silent = true })

--Add move line shortcuts
vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true})
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true})
vim.api.nvim_set_keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true})
vim.api.nvim_set_keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true})
vim.api.nvim_set_keymap("v", "<A-j>", ":m \">+1<CR>gv=gv", { noremap = true})
vim.api.nvim_set_keymap("v", "<A-k>", ":m \"<-2<CR>gv=gv", { noremap = true})

if vim.fn.has("win32") or vim.fn.has("win64") then
	vim.api.nvim_set_keymap("n", "<C-z>", "<Nop>", { noremap = false, silent = true })
end


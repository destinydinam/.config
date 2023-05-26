local keymap  =  vim.keymap
local opts = { noremap = true, silent = true }

-- close nvim
keymap.set('n', ';q', ':q<Return>' )
keymap.set('n', ';wq', ':wq<Return>' )
keymap.set('n', ';w', ':w<Return>' )

-- leave insert mode
keymap.set('i', 'jk', '<ESC>' )

--Remap space as leader key
keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- open explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap.set("n", "<S-f>", ":NvimTreeFocus<CR>", opts)

-- prettier
keymap.set("n", "<C-s>", ":Prettier<Return>", opts)

-- fluid cursor movement
vim.cmd "set whichwrap+=<,>,[,],h,l"

-- do not yank with x
keymap.set('n', 'x', '"_x')

-- inc/dec nums
--keymap.set('n', '+', '<C-a>')
--keymap.set('n', '-', '<C-x>')

-- delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- select all 
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- new tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- split window
keymap.set('n', 'sd', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- move window focus
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- resize window with arrows
keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)
keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)


-- Move line up/down
keymap.set('n', '<M-j>', ':m .+1<CR>==', { noremap = true })
keymap.set('n', '<M-k>', ':m .-2<CR>==', { noremap = true })
keymap.set('i', '<M-j>', '<Esc>:m .+1<CR>==gi', { noremap = true })
keymap.set('i', '<M-k>', '<Esc>:m .-2<CR>==gi', { noremap = true })
keymap.set('v', '<M-j>', ':m \'>+1<CR>gv=gv', { noremap = true })
keymap.set('v', '<M-k>', ':m \'<-2<CR>gv=gv', { noremap = true })


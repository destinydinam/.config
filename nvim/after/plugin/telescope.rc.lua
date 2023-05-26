local map = vim.api.nvim_set_keymap
map('n', '<leader>f', ':lua require("telescope.builtin").find_files()<CR>', {})
map('n', '<leader>g', ':lua require("telescope.builtin").live_grep()<CR>', {})
map('n', '<leader>b', ':lua require("telescope.builtin").buffers()<CR>', {})
map('n', '<leader>h', ':lua require("telescope.builtin").help_tags()<CR>', {})
map('n', '<leader>s', ':lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ")})<CR>', {})


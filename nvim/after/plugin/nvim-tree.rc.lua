-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`






-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 1
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})



--
--local status_ok, nvim_tree = pcall(require, "nvim-tree")
--if not status_ok then
--    return
--end
--
--local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
--if not config_status_ok then
--    return
--end
--
--local tree_cb = nvim_tree_config.nvim_tree_callback
--
--nvim_tree.setup {
--    disable_netrw = true,
--    hijack_netrw = true,
--    open_on_setup = false,
--    ignore_ft_on_setup = {
--        "startify",
--        "dashboard",
--        "alpha",
--    },
--    open_on_tab = false,
--    hijack_cursor = false,
--    update_cwd = true,
--    hijack_directories = {
--        enable = true,
--        auto_open = true,
--    },
--    diagnostics = {
--        enable = true,
--        icons = {
--            hint = "",
--            info = "",
--            warning = "",
--            error = "",
--        },
--    },
--    update_focused_file = {
--        enable = true,
--        update_cwd = true,
--        ignore_list = {},
--    },
--    git = {
--        enable = true,
--        ignore = true,
--        timeout = 500,
--    },
--    view = {
--        width = 30,
--        height = 30,
--        hide_root_folder = false,
--        side = "left",
--        auto_resize = true,
--        mappings = {
--            custom_only = false,
--            list = {
--            { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
--            { key = "h", cb = tree_cb "close_node" },
--            { key = "v", cb = tree_cb "vsplit" },
--            },
--        },
--        number = false,
--        relativenumber = false,
--    },
--    actions = {
--        quit_on_open = true,
--        window_picker = { enable = true },
--    },
--    renderer = {
--        highlight_git = true,
--        root_folder_modifier = ":t",
--        icons = {
--            show = {
--                file = true,
--                folder = true,
--                folder_arrow = true,
--                git = true,
--            },
--            glyphs = {
--                default = "",
--                symlink = "",
--                git = {
--                    unstaged = "",
--                    staged = "S",
--                    unmerged = "",
--                    renamed = "➜",
--                    deleted = "",
--                    untracked = "U",
--                    ignored = "◌",
--                },
--                folder = {
--                    default = "",
--                    open = "",
--                    empty = "",
--                    empty_open = "",
--                    symlink = "",
--                },
--            }
--        }
--    }
--}

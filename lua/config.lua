
require 'colorizer'.setup()
-- require('colorbuddy').colorscheme('gruvbuddy')
--


require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
     "tsx",
    "javascript",
    "html",
    "php",
    "json",
    "markdown",
    "java",
    "css",
    "python",
    "vue"
 },
  autotag = {
    enable = true,
  }
}









local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

local actions = require("telescope.actions")

 require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close,
            },
        },
    file_ignore_patterns = { "node_modules",
    "build", "vendor",  ".gitignore", "bin", "include", "env", "venv", "__pycache__", "migrations"}
    },
})




require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = true, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"




require 'colorizer'.setup()
require('colorbuddy').colorscheme('gruvbuddy')
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






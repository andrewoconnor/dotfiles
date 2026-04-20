return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    prefer_git = true,
  },
  config = function()
    local treesitter = require("nvim-treesitter.config")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = {
        enable = true
      },
      -- ensure these language parsers are installed
      ensure_installed = {
        "bash",
        "json",
        "hcl",
        "lua",
        "markdown",
        "python",
        "terraform",
        "tmux",
        "toml",
        "yaml",
        "vim",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}

return {
  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- silicon
  {
    "krivahtoo/silicon.nvim",
    cmd = "Silicon",
    build = "./install.sh build",
    opts = {
      theme = "Dracula",
      font = "Cascadia Code;Fira Code Mystery;Yahei Mono for Powerline",
      background = "#AAAAFF",
      shadow = {
        color = "#555555",
        blur_radius = 0,
        offset_x = 0,
        offset_y = 0,
      },
      pad_horiz = 80,
      pad_vert = 100,
      line_number = true,
      line_pad = 2,
      round_corner = true,
      window_controls = true,
      watermark = {
        text = "changbai | william.zhang",
        style = "italic",
      },
      window_title = function()
        return vim.fn.fnamemodify(vim.fn.bufname(vim.fn.bufnr()), ":~:.")
      end,
    },
  },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "go",
        "gomod",
        "gosum",
        "gowork",
        "html",
        "ini",
        "javascript",
        "json",
        "latex",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "php",
        "phpdoc",
        "python",
        "query",
        "regex",
        "ruby",
        "rust",
        "sql",
        "toml",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
    },
  },
}

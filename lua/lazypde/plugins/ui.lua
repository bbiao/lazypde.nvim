-- UI related plugins
return {
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "storm",
      transparent = false, -- Enable this to disable setting the background color
    },
  },

  -- catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "macchiato",
      },
    },
  },

  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", lazy = true },

  -- Configure LazyVim to load custom colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },

  -- edgy
  {
    "folke/edgy.nvim",
    opts = {
      left = {
        {
          title = "Neo-Tree",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "filesystem"
          end,
          pinned = true,
          open = function()
            vim.api.nvim_input("<esc><space>e")
          end,
          size = { height = 0.5 },
        },
        { title = "Neotest Summary", ft = "neotest-summary" },
        {
          title = "Neo-Tree Git",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "git_status"
          end,
          pinned = true,
          open = "Neotree position=right git_status",
        },
        {
          title = "Neo-Tree Buffers",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "buffers"
          end,
          pinned = true,
          open = "Neotree position=top buffers",
        },
        "neo-tree",
      },
      right = {
        {
          ft = "Outline",
          pinned = true,
          open = "SymbolsOutline",
        },
      },
    },
  },

  -- add symbols-outline
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    -- config = true,
    opts = {
      -- add your options that should be passed to the setup() function here
      position = "right",
    },
  },

  -- enable mini.starter
  {
    "echasnovski/mini.starter",
    optional = true,
    dependencies = {
      {
        "MaximilianLloyd/ascii.nvim",
        config = function()
          require("telescope").load_extension("ascii")
        end,
      },
    },
    opts = function(_, opts)
      local ascii = require("ascii")
      -- local logo = table.concat(ascii.get_random_global(), "\n")
      local logo = table.concat(ascii.get_random("text", "neovim"), "\n")
      opts.header = logo
    end,
  },
}

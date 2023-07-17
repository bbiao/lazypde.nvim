return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "gopls",
        "goimports",
        "delve",
      },
    },
  },

  {
    "goolord/alpha-nvim",
    optional = true,
    opts = function(_, dashboard)
      local button = dashboard.button("m", "󰟻 " .. " Mason", ":Mason <CR>")
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
      table.insert(dashboard.section.buttons.val, 5, button)
    end,
  },

  {
    "echasnovski/mini.starter",
    optional = true,
    opts = function(_, opts)
      local items = {
        {
          name = "Mason",
          action = "Mason",
          section = string.rep(" ", 22) .. "Config",
        },
      }
      vim.list_extend(opts.items, items)
    end,
  },
}
